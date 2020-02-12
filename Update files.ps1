# Script for update wsusscn2.cab (contains all security updates. Download from Microsoft.com) and update_path.csv (contains all deployed updates from SCCM)

#region Functions
# Download wsusscn2.cab from Microsoft site
function Update-wsusscn2
{
    [CmdletBinding()]
    Param (
        [Parameter(Mandatory=$false)]
        [AllowEmptyCollection()]
        [string]$ApplicationPath = $PSScriptRoot.ToString(),
        [Parameter(Mandatory=$false)]
        [string]$ProxyURL
    )
    if ($ProxyURL)
    {
        Invoke-WebRequest -Uri 'http://go.microsoft.com/fwlink/?linkid=74689' -OutFile "$ApplicationPath\wsusscn2.cab" -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::FireFox -Proxy $ProxyURL -ProxyUseDefaultCredentials
    }
    else
    {
        Invoke-WebRequest -Uri 'http://go.microsoft.com/fwlink/?linkid=74689' -OutFile "$ApplicationPath\wsusscn2.cab" -UseBasicParsing -UserAgent [Microsoft.PowerShell.Commands.PSUserAgent]::FireFox #-Proxy $ProxyURL -ProxyUseDefaultCredentials
    }
}

# Get all published updates from SCCM
function Get-SCCMKBsPath
{
	[CmdletBinding()]
    Param (
        [Parameter(Mandatory=$true)]
        [string]$Path,
        [Parameter(Mandatory=$true)]
        [string]$SCCM_SQL_DB_Server,
        [Parameter(Mandatory=$true)]
        [string]$SQL_DB_Name,
        [Parameter(Mandatory=$true)]
        [string]$PathToSCCMUpdateFiles
    )
    $SqlQuery = @"
    ;WITH XMLNAMESPACES('http://schemas.microsoft.com/SystemsCenterConfigurationManager/2009/07/10/DesiredConfiguration' AS dcm)
SELECT
	ui.ArticleID,
	ui.BulletinID,
	ui.ISExpired,
	ui.Title,
	ui.Description,
	ui.InfoURL,
	SUBSTRING((d.ref.value(N'@LogicalName', 'varchar(100)')),5,40) AS SCCMContentID,
	(e.ref.value(N'@SmsUniqueIdentity', 'varchar(100)')) AS UpdateID,
	SCCMContentPath = ''
    FROM
	dbo.v_UpdateInfo ui
    CROSS APPLY ui.SDMPackageDigest.nodes(N'//dcm:Updates/dcm:SoftwareUpdateReference') AS d(ref) -- /dcm:Updates/dcm:SoftwareUpdateReference работает как логическое "и". Нужно чтобы было и Updates и SoftwareUpdateReference
	CROSS APPLY ui.SDMPackageDigest.nodes(N'//dcm:ConfigurationMetadata') AS e(ref) -- /dcm:Updates/dcm:SoftwareUpdateReference работает как логическое "и". Нужно чтобы было и Updates и SoftwareUpdateReference
	WHERE ui.IsDeployed = 1
    and ArticleID != ''	
	ORDER BY
	ArticleID, BulletinID, Title
"@
	try{
		$res = @()
		$SQLServer = $SCCM_SQL_DB_Server
		$SQLDBName = $SQL_DB_Name
		$ConnectionString = "Server = $SQLServer; Database = $SQLDBName; Integrated Security = True"
		$Connection = New-Object System.Data.SqlClient.SqlConnection
		$Connection.ConnectionString = $ConnectionString
		$Connection.Open()
		$Command = $Connection.CreateCommand()
		$Command.CommandText = $sqlquery
		$Command.CommandTimeout=0
		$Result = $Command.ExecuteReader()
		$Table = new-object "System.Data.DataTable"
		$Table.Load($Result)
        $i = 0
        $Total = $Table.Rows.Count 
         
		if ($Table.Rows.Count -ne 0)
		{  
            $folders = (Get-ChildItem -Path $PathToSCCMUpdateFiles -Recurse ) | ? {$_.Attributes -eq 'Directory' }
            $folderHash = @{}
            foreach ($folder in $folders) {$folderHash.($folder.BaseName) = $folder.FullName}
            foreach ($row in $Table.Rows)
            {
                $i = $i + 1
                Write-Host "$Total \ $i : $($row.ArticleID)"
                $hash = @{
                    ArticleID = $row.ArticleID;
                    BulletinID = $row.BulletinID;
                    ISExpired = $row.ISExpired;
                    Title = $row.Title;
                    Description = $row.Description;
                    InfoURL = $row.InfoURL;
                    UpdateID = $row.UpdateID;
                    SCCMContentID = $row.SCCMContentID;
                    SCCMContentPath = $folderHash[$row.SCCMContentID]
                    #SCCMContentPath = foreach ($folder in $folders) {
                    #if ($folder.BaseName -eq $row.SCCMContentID) {
                    #$folder.FullName
                    #} # этот вариант быстрее, но всё равно очень медленно.
                    #} #($folders | ? {$_.BaseName -eq $row.SCCMContentID}).BaseName # Этот метод очень медленный
                }
                $obj = [PSCustomObject]$hash
                $res += , $obj
            }
            Write-Host "Export `$Res to file  $Path\update_path.csv"
			$Res | ConvertTo-Csv | Out-File  $Path\update_path.csv -force
		}
	}
	catch{}
}

# Main function
function Main
{
	[CmdletBinding()]
    Param (
        [Parameter(Mandatory=$true)]
        [string]$SCCM_SQL_DB_Server,
        [Parameter(Mandatory=$true)]
        [string]$SQL_DB_Name,
        [Parameter(Mandatory=$true)]
        [string]$PathToSCCMUpdateFiles,
        [Parameter(Mandatory=$true)]
        [string]$Path,
        [Parameter(Mandatory=$false)]
        [string]$ProxyURL
        
    )
    Update-wsusscn2 -ProxyURL $ProxyURL
    Import-Module "$Path\ImportExcel\6.5.1\ImportExcel.psm1"
    Get-SCCMKBsPath -Path $Path -SCCM_SQL_DB_Server $SCCM_SQL_DB_Server -SQL_DB_Name $SQL_DB_Name -PathToSCCMUpdateFiles $PathToSCCMUpdateFiles
}
#endregion Functions

#region Variables
$Path = $PSScriptRoot.ToString()
$SCCM_SQL_DB_Server = 'SCCMandSQL.rprokhorov.local'
$SQL_DB_Name = 'CM_PRV'
$PathToSCCMUpdateFiles = '\\SCCMandSQL.rprokhorov.local\Share\Updates\'
$ProxyURL = 'http://ProxyServer.rprokhorov.local:8080'
#endregion Variables

Main -SCCM_SQL_DB_Server $SCCM_SQL_DB_Server -SQL_DB_Name $SQL_DB_Name -PathToSCCMUpdateFiles $PathToSCCMUpdateFiles -Path $Path -ProxyURL $ProxyURL