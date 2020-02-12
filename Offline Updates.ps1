#----------------------------------------------
#region Import Assemblies
#----------------------------------------------
[void][Reflection.Assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
[void][Reflection.Assembly]::Load('System.Data, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
[void][Reflection.Assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
#endregion Import Assemblies

#Define a Param block to use custom parameters in the project
#Param ($CustomParameter)

function Main {
<#
    .SYNOPSIS
        The Main function starts the project application.
    
    .PARAMETER Commandline
        $Commandline contains the complete argument string passed to the script packager executable.
    
    .NOTES
        Use this function to initialize your script and to call GUI forms.
		
    .NOTES
        To get the console output in the Packager (Forms Engine) use: 
		$ConsoleOutput (Type: System.Collections.ArrayList)
#>
	Param ([String]$Commandline)
		
	#--------------------------------------------------------------------------
	#TODO: Add initialization script here (Load modules and check requirements)
	
	#--------------------------------------------------------------------------
		
	if ((Call-MainForm_psf) -eq 'OK')
	{
			
	}
}







#endregion Source: Startup.pss

#region Source: MainForm.psf
function Call-MainForm_psf
{
#region File Recovery Data (DO NOT MODIFY)
<#RecoveryData:
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
AAA=#>
#endregion
	#----------------------------------------------
	#region Import the Assemblies
	#----------------------------------------------
	[void][reflection.assembly]::Load('System.Windows.Forms, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Data, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089')
	[void][reflection.assembly]::Load('System.Drawing, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	[void][reflection.assembly]::Load('System.Design, Version=2.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a')
	#endregion Import Assemblies

	#----------------------------------------------
	#region Generated Form Objects
	#----------------------------------------------
	[System.Windows.Forms.Application]::EnableVisualStyles()
	$MainForm = New-Object 'System.Windows.Forms.Form'
	$splitcontainer1 = New-Object 'System.Windows.Forms.SplitContainer'
	$statusstrip1 = New-Object 'System.Windows.Forms.StatusStrip'
	$menustrip1 = New-Object 'System.Windows.Forms.MenuStrip'
	$buttonСканироватьКомпьютер = New-Object 'System.Windows.Forms.Button'
	$buttonУстановитьОбновления = New-Object 'System.Windows.Forms.Button'
	$openfiledialog1 = New-Object 'System.Windows.Forms.OpenFileDialog'
	$textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$groupbox1 = New-Object 'System.Windows.Forms.GroupBox'
	$textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$buttonЗагрузитьДанныеИзФай = New-Object 'System.Windows.Forms.Button'
	$buttonОбновитьКонфигурацио = New-Object 'System.Windows.Forms.Button'
	$tabcontrol1 = New-Object 'System.Windows.Forms.TabControl'
	$tabpage1 = New-Object 'System.Windows.Forms.TabPage'
	$datagridview1 = New-Object 'System.Windows.Forms.DataGridView'
	$groupbox1 = New-Object 'System.Windows.Forms.GroupBox'
	$textbox1 = New-Object 'System.Windows.Forms.TextBox'
	$buttonЗагрузитьДанныеИзФай = New-Object 'System.Windows.Forms.Button'
	$tabpage2 = New-Object 'System.Windows.Forms.TabPage'
	$datagridview2 = New-Object 'System.Windows.Forms.DataGridView'
	$groupbox4 = New-Object 'System.Windows.Forms.GroupBox'
	$textbox2 = New-Object 'System.Windows.Forms.TextBox'
	$button3 = New-Object 'System.Windows.Forms.Button'
	$ProductName = New-Object 'System.Windows.Forms.DataGridViewTextBoxColumn'
	$VersionFrom = New-Object 'System.Windows.Forms.DataGridViewTextBoxColumn'
	$VersionTo = New-Object 'System.Windows.Forms.DataGridViewTextBoxColumn'
	$UninstallSting = New-Object 'System.Windows.Forms.DataGridViewTextBoxColumn'
	$buttonЗагрузитьОбновленияС = New-Object 'System.Windows.Forms.Button'
	$UpdatePath = New-Object 'System.Windows.Forms.DataGridViewTextBoxColumn'
	$Category = New-Object 'System.Windows.Forms.DataGridViewTextBoxColumn'
	$Title = New-Object 'System.Windows.Forms.DataGridViewTextBoxColumn'
	$KBArticleID = New-Object 'System.Windows.Forms.DataGridViewTextBoxColumn'
	$splitcontainer4 = New-Object 'System.Windows.Forms.SplitContainer'
	$richtextbox1 = New-Object 'System.Windows.Forms.RichTextBox'
	$openfiledialog2 = New-Object 'System.Windows.Forms.OpenFileDialog'
	$buttonСканироватьПриложени = New-Object 'System.Windows.Forms.Button'
	$InitialFormWindowState = New-Object 'System.Windows.Forms.FormWindowState'
	#endregion Generated Form Objects

	#----------------------------------------------
	# User Generated Script
	#----------------------------------------------
	$MainForm_Load={
	#TODO: Initialize Form Controls here
		Import-Module "$Path\ImportExcel\6.5.1\ImportExcel.psm1"
		# Проверка от кого запущено
		If (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))
		{
	        Add-ToLog 'Запущено не от администратора, поэтому некоторые функции будут недоступны.' -Color DarkGoldenrod
			#$arguments = "& '" + $myinvocation.mycommand.definition + "'"
			#Start-Process powershell -Verb runAs -ArgumentList $arguments
			#Break
			$buttonСканироватьКомпьютер.Enabled = $false
			$buttonУстановитьОбновления.Enabled = $false
		}
		else
		{
			Add-ToLog 'Приложениe запущено от администратора. Доступен полный функционал.' -Color Green
		}
		
	}
	
	#region Control Helper Functions
	function Load-DataGridView
	{
		<#
		.SYNOPSIS
			This functions helps you load items into a DataGridView.
	
		.DESCRIPTION
			Use this function to dynamically load items into the DataGridView control.
	
		.PARAMETER  DataGridView
			The DataGridView control you want to add items to.
	
		.PARAMETER  Item
			The object or objects you wish to load into the DataGridView's items collection.
		
		.PARAMETER  DataMember
			Sets the name of the list or table in the data source for which the DataGridView is displaying data.
	
		.PARAMETER AutoSizeColumns
		    Resizes DataGridView control's columns after loading the items.
		#>
		Param (
			[ValidateNotNull()]
			[Parameter(Mandatory=$true)]
			[System.Windows.Forms.DataGridView]$DataGridView,
			[ValidateNotNull()]
			[Parameter(Mandatory=$true)]
			$Item,
		    [Parameter(Mandatory=$false)]
			[string]$DataMember,
			[System.Windows.Forms.DataGridViewAutoSizeColumnMode]$AutoSizeColumns = 'None'
		)
		$DataGridView.SuspendLayout()
		$DataGridView.DataMember = $DataMember
		
		if ($Item -is [System.Data.DataSet] -and $Item.Tables.Count -gt 0)
		{
			$DataGridView.DataSource = $Item.Tables[0]
		}
		elseif ($Item -is [System.ComponentModel.IListSource]`
		-or $Item -is [System.ComponentModel.IBindingList] -or $Item -is [System.ComponentModel.IBindingListView] )
		{
			$DataGridView.DataSource = $Item
		}
		else
		{
			$array = New-Object System.Collections.ArrayList
			
			if ($Item -is [System.Collections.IList])
			{
				$array.AddRange($Item)
			}
			else
			{
				$array.Add($Item)
			}
			$DataGridView.DataSource = $array
		}
		
		if ($AutoSizeColumns -ne 'None')
		{
			$DataGridView.AutoResizeColumns($AutoSizeColumns)
		}
		
		$DataGridView.ResumeLayout()
	}
	
	function ConvertTo-DataTable
	{
		<#
			.SYNOPSIS
				Converts objects into a DataTable.
		
			.DESCRIPTION
				Converts objects into a DataTable, which are used for DataBinding.
		
			.PARAMETER  InputObject
				The input to convert into a DataTable.
		
			.PARAMETER  Table
				The DataTable you wish to load the input into.
		
			.PARAMETER RetainColumns
				This switch tells the function to keep the DataTable's existing columns.
			
			.PARAMETER FilterWMIProperties
				This switch removes WMI properties that start with an underline.
		
			.EXAMPLE
				$DataTable = ConvertTo-DataTable -InputObject (Get-Process)
		#>
		[OutputType([System.Data.DataTable])]
		param(
		[ValidateNotNull()]
		$InputObject, 
		[ValidateNotNull()]
		[System.Data.DataTable]$Table,
		[switch]$RetainColumns,
		[switch]$FilterWMIProperties)
		
		if($null -eq $Table)
		{
			$Table = New-Object System.Data.DataTable
		}
		
		if ($InputObject -is [System.Data.DataTable])
		{
			$Table = $InputObject
		}
		elseif ($InputObject -is [System.Data.DataSet] -and $InputObject.Tables.Count -gt 0)
		{
			$Table = $InputObject.Tables[0]
		}
		else
		{
			if (-not $RetainColumns -or $Table.Columns.Count -eq 0)
			{
				#Clear out the Table Contents
				$Table.Clear()
				
				if ($null -eq $InputObject) { return } #Empty Data
				
				$object = $null
				#find the first non null value
				foreach ($item in $InputObject)
				{
					if ($null -ne $item)
					{
						$object = $item
						break
					}
				}
				
				if ($null -eq $object) { return } #All null then empty
				
				#Get all the properties in order to create the columns
				foreach ($prop in $object.PSObject.Get_Properties())
				{
					if (-not $FilterWMIProperties -or -not $prop.Name.StartsWith('__')) #filter out WMI properties
					{
						#Get the type from the Definition string
						$type = $null
						
						if ($null -ne $prop.Value)
						{
							try { $type = $prop.Value.GetType() }
							catch { }
						}
						
						if ($null -ne $type) # -and [System.Type]::GetTypeCode($type) -ne 'Object')
						{
							[void]$table.Columns.Add($prop.Name, $type)
						}
						else #Type info not found
						{
							[void]$table.Columns.Add($prop.Name)
						}
					}
				}
				
				if ($object -is [System.Data.DataRow])
				{
					foreach ($item in $InputObject)
					{
						$Table.Rows.Add($item)
					}
					return @( ,$Table)
				}
			}
			else
			{
				$Table.Rows.Clear()
			}
			
			foreach ($item in $InputObject)
			{
				$row = $table.NewRow()
				
				if ($item)
				{
					foreach ($prop in $item.PSObject.Get_Properties())
					{
						if ($table.Columns.Contains($prop.Name))
						{
							$row.Item($prop.Name) = $prop.Value
						}
					}
				}
				[void]$table.Rows.Add($row)
			}
		}
		
		return @(,$Table)	
	}
	
	function Load-ListBox 
	{
	<#
		.SYNOPSIS
			This functions helps you load items into a ListBox or CheckedListBox.
	
		.DESCRIPTION
			Use this function to dynamically load items into the ListBox control.
	
		.PARAMETER  ListBox
			The ListBox control you want to add items to.
	
		.PARAMETER  Items
			The object or objects you wish to load into the ListBox's Items collection.
	
		.PARAMETER  DisplayMember
			Indicates the property to display for the items in this control.
		
		.PARAMETER  Append
			Adds the item(s) to the ListBox without clearing the Items collection.
		
		.EXAMPLE
			Load-ListBox $ListBox1 "Red", "White", "Blue"
		
		.EXAMPLE
			Load-ListBox $listBox1 "Red" -Append
			Load-ListBox $listBox1 "White" -Append
			Load-ListBox $listBox1 "Blue" -Append
		
		.EXAMPLE
			Load-ListBox $listBox1 (Get-Process) "ProcessName"
	#>
		Param (
			[ValidateNotNull()]
			[Parameter(Mandatory=$true)]
			[System.Windows.Forms.ListBox]$ListBox,
			[ValidateNotNull()]
			[Parameter(Mandatory=$true)]
			$Items,
		    [Parameter(Mandatory=$false)]
			[string]$DisplayMember,
			[switch]$Append
		)
		
		if(-not $Append)
		{
			$listBox.Items.Clear()	
		}
		
		if($Items -is [System.Windows.Forms.ListBox+ObjectCollection] -or $Items -is [System.Collections.ICollection])
		{
			$listBox.Items.AddRange($Items)
		}
		elseif ($Items -is [System.Collections.IEnumerable])
		{
			$listBox.BeginUpdate()
			foreach($obj in $Items)
			{
				$listBox.Items.Add($obj)
			}
			$listBox.EndUpdate()
		}
		else
		{
			$listBox.Items.Add($Items)	
		}
	
		$listBox.DisplayMember = $DisplayMember	
	}
	#endregion
	
	$buttonСканироватьКомпьютер_Click = {
		#TODO: Place custom script here
		$date = Get-Date -Format 'yyyy-MM-dd hh-mm'
		New-Item -ItemType Directory -Path $Path\Result\ -ErrorAction SilentlyContinue
		New-Item -ItemType Directory -Path $Path\Result\$env:COMPUTERNAME -ErrorAction SilentlyContinue
		if (Test-Path -Path "$Path\config.json" -ErrorAction SilentlyContinue)
		{
			$configPath = "$Path\config.json"
		}
		try
		{
			Import-Module "$Path\ImportExcel\6.5.1\ImportExcel.psm1"
		}
		catch{}
		Get-MissingUpdates -Path $Path -date $date
		if (Test-Path -Path $textbox1.Text)
		{
			Get-UpdatesFromFile -Path $textbox1.Text
		}
		Add-ToLog -Message "Поиск обновлений для приложений. Это займёт менее минуты."
		Get-ScanApplications -Path $Path -date $date
		if (Test-Path -Path $textbox2.Text)
		{
			Get-ApplicationsFromFile -Path $textbox2.Text
		}
		Add-ToLog -Message "Поиск обновлений для приложений завершён."
	}
	
	$button3_Click={
		#TODO: Place custom script here
		$openfiledialog1.InitialDirectory = $path
		$openfiledialog1.Title = 'Выберите файл с результатами сканирования приложений'
		$openfiledialog1.Filter = "Excel files (*.xlsx) | *.xlsx"
		if ($openfiledialog1.ShowDialog() -eq 'OK')
		{
			$textbox2.Text = $openfiledialog1.FileName
			if (Test-Path -Path $textbox2.Text)
			{
				Get-ApplicationsFromFile -Path $textbox2.Text
			}
		}
	}
	
	$buttonЗагрузитьОбновленияС_Click={
		#TODO: Place custom script here
		$CommandList = @()
		foreach ($row in $datagridview1.Rows)
		{
			# Заполняем форму
			if ($row.Cells['KBArticleID'].Value)
			{
				$hash = @{ }
				$hash['KBArticleID'] = $row.Cells['KBArticleID'].Value
				$from = ($row.Cells['UpdatePath'].Value.ToString() + "\*")
				$to = "$($textbox1.Text.Split('\')[0..($textbox1.Text.Split('\').Length - 2)] -join '\')\$($row.Cells['KBArticleID'].Value.ToString())"
				# Create folder for Update 
				Add-ToLog -Message "Create folder: `"$to`""
				New-Item -ItemType Directory -Path $to -ErrorAction SilentlyContinue
				Add-ToLog -Message "Copy files"
				Add-ToLog -Message "From: `"$from`""
				Add-ToLog -Message "To: `"$to`""
				Add-ToLog -Message "Copy-Item -Path $from -Destination $to"
				Copy-Item -Path $from -Destination $to
				# Если обнолвения Windows
				if ($row.Cells['Category'].Value.ToString() -like '*Office*')
				{
					$filesPath = (Get-ChildItem -Path $to -Recurse -Filter '*.cab').FullName
					foreach ($filePath in $filesPath)
					{
						$unarchivedFiles = Invoke-UnzipFile -FilePath $filePath -Destination $to
						Add-ToLog -Message "Invoke-UnzipFile -FilePath $filePath -Destination $to"
					}
					$MSPFilePath = $((Get-ChildItem -Path $to -Recurse -Filter '*.msp').FullName)
					$Command = "`"$MSPFilePath`"".Replace($ScriptDirectory, '$ScriptDirectory')
					Add-ToLog -Message "ScriptDirectory: $ScriptDirectory"
					Add-ToLog -Message "Command: $Command"
					$hash['InstallCommand'] = $Command
				}
				else
				{
					$CabFilePath = $((Get-ChildItem -Path $to -Recurse -Filter '*.cab').FullName)
					$Command = "dism /Online /Add-Package /packagePath:`"$CabFilePath`""
					Add-ToLog -Message "ScriptDirectory: $ScriptDirectory"
					Add-ToLog -Message "Command: $Command"
					$hash['InstallCommand'] = $Command
				}
				$CommandList += [PSCustomObject]$hash
				Add-ToLog -Message $hash['InstallCommand']
			}
		}
        if ($CommandList.InstallCommand)
		{
			$CommandList.InstallCommand | Out-File ($textbox1.Text -replace 'xlsx', 'txt') -Force
			(Get-Content ($textbox1.Text -replace 'xlsx', 'txt')).Replace($ScriptDirectory, '$ScriptDirectory') | Out-File ($textbox1.Text -replace 'xlsx', 'txt') -Force
			Add-ToLog -Message "Файл с командами для установки обновлений: $($textbox1.Text -replace 'xlsx', 'txt')" -Color Green
            Add-ToLog -Message "Загрузка обновлений закончена" -Color Green
		}
        else
        {
            Add-ToLog -Message "В списке нет обновлений для загрузки" -Color Red
        }
	}
	
	$buttonУстановитьОбновления_Click = {
		if (Test-Path -Path ($textbox1.Text -replace 'xlsx', 'txt'))
		{
			$commands = Get-Content -Path ($textbox1.Text -replace 'xlsx', 'txt')
		}
		foreach ($command in $commands)
		{
			if ($command -like 'dism*')
			{
				$a = "$($command.Replace('$ScriptDirectory', $ScriptDirectory))"
				Add-ToLog -Message "Start-Process -FilePath dism -ArgumentList $($a.replace('dism','')) -Wait"
				Start-Process -FilePath dism -ArgumentList $a.replace('dism','') -Wait
			}
			else
			{
				#Add-ToLog -Message $command
				Add-ToLog -Message "Start-Process $($command.Replace('$ScriptDirectory', $ScriptDirectory))"
				Start-Process ($command.Replace('$ScriptDirectory', $ScriptDirectory)) -Wait
			}
			Add-ToLog -Message "Обновления установлены" -Color Green
		}
	}
	
	$button2_Click={
		#TODO: Place custom script here
		$openfiledialog2.InitialDirectory = $path
		$openfiledialog2.Title = 'Выберите файл с результатами сканирования обновлений'
		$openfiledialog2.Filter = "Excel files (*.xlsx) | *.xlsx"
		if ($openfiledialog2.ShowDialog() -eq 'OK')
		{
			$textbox1.Text = $openfiledialog2.FileName
			if (Test-Path -Path $textbox1.Text -ErrorAction SilentlyContinue)
			{
				Get-UpdatesFromFile -Path $textbox1.Text
			}
		}
		
	}
	$buttonСканироватьПриложени_Click={
		#TODO: Place custom script here
		$date = Get-Date -Format 'yyyy-MM-dd hh-mm'
		New-Item -ItemType Directory -Path $Path\Result\ -ErrorAction SilentlyContinue
		New-Item -ItemType Directory -Path $Path\Result\$env:COMPUTERNAME -ErrorAction SilentlyContinue
		if (Test-Path -Path "$Path\config.json" -ErrorAction SilentlyContinue)
		{
			$configPath = "$Path\config.json"
		}
		try
		{
			Import-Module "$Path\ImportExcel\6.5.1\ImportExcel.psm1"
		}
		catch{}
		Add-ToLog -Message "Поиск обновлений для приложений. Это займёт менее минуты."
		Get-ScanApplications -Path $Path -date $date
		if (Test-Path -Path $textbox2.Text)
		{
			Get-ApplicationsFromFile -Path $textbox2.Text
		}
		Add-ToLog -Message "Поиск обновлений для приложений завершён."
	}	
	# --End User Generated Script--
	#----------------------------------------------
	#region Generated Events
	#----------------------------------------------
	
	$Form_StateCorrection_Load=
	{
		#Correct the initial state of the form to prevent the .Net maximized form issue
		$MainForm.WindowState = $InitialFormWindowState
	}
	
	$Form_StoreValues_Closing=
	{
		#Store the control values
		$script:MainForm_textbox1 = $textbox1.Text
		$script:MainForm_datagridview1 = $datagridview1.SelectedCells
		$script:MainForm_datagridview2 = $datagridview2.SelectedCells
		$script:MainForm_textbox2 = $textbox2.Text
		$script:MainForm_richtextbox1 = $richtextbox1.Text
	}

	
	$Form_Cleanup_FormClosed=
	{
		#Remove all event handlers from the controls
		try
		{
			$MainForm.remove_Load($MainForm_Load)
			$buttonСканироватьКомпьютер.remove_Click($buttonСканироватьКомпьютер_Click)
			$buttonУстановитьОбновления.remove_Click($buttonУстановитьОбновления_Click)
			$buttonЗагрузитьДанныеИзФай.remove_Click($button2_Click)
			$buttonЗагрузитьДанныеИзФай.remove_Click($button2_Click)
			$button3.remove_Click($button3_Click)
			$buttonЗагрузитьОбновленияС.remove_Click($buttonЗагрузитьОбновленияС_Click)
			$buttonСканироватьПриложени.remove_Click($buttonСканироватьПриложени_Click)
			$MainForm.remove_Load($Form_StateCorrection_Load)
			$MainForm.remove_Closing($Form_StoreValues_Closing)
			$MainForm.remove_FormClosed($Form_Cleanup_FormClosed)
		}
		catch [Exception]
		{ }
	}
	#endregion Generated Events

	#----------------------------------------------
	#region Generated Form Code
	#----------------------------------------------
	$MainForm.SuspendLayout()
	$splitcontainer1.SuspendLayout()
	$statusstrip1.SuspendLayout()
	$menustrip1.SuspendLayout()
	$groupbox1.SuspendLayout()
	$tabcontrol1.SuspendLayout()
	$tabpage1.SuspendLayout()
	$tabpage2.SuspendLayout()
	$groupbox4.SuspendLayout()
	$splitcontainer4.SuspendLayout()
	#
	# MainForm
	#
	$MainForm.Controls.Add($splitcontainer1)
	$MainForm.Controls.Add($statusstrip1)
	$MainForm.Controls.Add($menustrip1)
	$MainForm.AutoScaleDimensions = '6, 13'
	$MainForm.AutoScaleMode = 'Font'
	$MainForm.ClientSize = '743, 435'
	$MainForm.MainMenuStrip = $menustrip1
	$MainForm.Name = 'MainForm'
	$MainForm.StartPosition = 'CenterScreen'
	$MainForm.Text = 'Offline Updates Witch SCCM'
	$MainForm.add_Load($MainForm_Load)
	#
	# splitcontainer1
	#
	$splitcontainer1.Dock = 'Fill'
	$splitcontainer1.FixedPanel = 'Panel1'
	$splitcontainer1.Location = '0, 24'
	$splitcontainer1.Name = 'splitcontainer1'
	[void]$splitcontainer1.Panel1.Controls.Add($buttonСканироватьПриложени)
	[void]$splitcontainer1.Panel1.Controls.Add($buttonЗагрузитьОбновленияС)
	[void]$splitcontainer1.Panel1.Controls.Add($buttonУстановитьОбновления)
	[void]$splitcontainer1.Panel1.Controls.Add($buttonОбновитьКонфигурацио)
	[void]$splitcontainer1.Panel1.Controls.Add($buttonСканироватьКомпьютер)
	[void]$splitcontainer1.Panel2.Controls.Add($splitcontainer4)
	$splitcontainer1.Size = '743, 389'
	$splitcontainer1.SplitterDistance = 113
	$splitcontainer1.TabIndex = 6
	#
	# statusstrip1
	#
	$statusstrip1.Location = '0, 413'
	$statusstrip1.Name = 'statusstrip1'
	$statusstrip1.Size = '743, 22'
	$statusstrip1.TabIndex = 3
	$statusstrip1.Text = 'statusstrip1'
	#
	# menustrip1
	#
	$menustrip1.Location = '0, 0'
	$menustrip1.Name = 'menustrip1'
	$menustrip1.Size = '743, 24'
	$menustrip1.TabIndex = 7
	$menustrip1.Text = 'menustrip1'
	#
	# buttonСканироватьКомпьютер
	#
	$buttonСканироватьКомпьютер.Location = '12, 13'
	$buttonСканироватьКомпьютер.Name = 'buttonСканироватьКомпьютер'
	$buttonСканироватьКомпьютер.Size = '89, 48'
	$buttonСканироватьКомпьютер.TabIndex = 0
	$buttonСканироватьКомпьютер.Text = 'Сканировать компьютер'
	$buttonСканироватьКомпьютер.UseVisualStyleBackColor = $True
	$buttonСканироватьКомпьютер.add_Click($buttonСканироватьКомпьютер_Click)
	#
	# buttonУстановитьОбновления
	#
	$buttonУстановитьОбновления.Location = '12, 176'
	$buttonУстановитьОбновления.Name = 'buttonУстановитьОбновления'
	$buttonУстановитьОбновления.Size = '89, 49'
	$buttonУстановитьОбновления.TabIndex = 2
	$buttonУстановитьОбновления.Text = 'Установить обновления'
	$buttonУстановитьОбновления.UseVisualStyleBackColor = $True
	$buttonУстановитьОбновления.add_Click($buttonУстановитьОбновления_Click)
	#
	# openfiledialog1
	#
	$openfiledialog1.FileName = 'openfiledialog1'
	#
	# textbox1
	#
	$textbox1.Dock = 'Fill'
	$textbox1.Location = '3, 16'
	$textbox1.Name = 'textbox1'
	$textbox1.ReadOnly = $True
	$textbox1.Size = '446, 20'
	$textbox1.TabIndex = 10
	#
	# groupbox1
	#
	$groupbox1.Controls.Add($textbox1)
	$groupbox1.Controls.Add($buttonЗагрузитьДанныеИзФай)
	$groupbox1.Dock = 'Top'
	$groupbox1.Location = '3, 3'
	$groupbox1.Name = 'groupbox1'
	$groupbox1.Size = '612, 40'
	$groupbox1.TabIndex = 10
	$groupbox1.TabStop = $False
	$groupbox1.Text = 'Путь до файла результатов сканирования неустановленных обновлений'
	#
	# textbox1
	#
	$textbox1.Dock = 'Fill'
	$textbox1.Location = '3, 16'
	$textbox1.Name = 'textbox1'
	$textbox1.ReadOnly = $True
	$textbox1.Size = '446, 20'
	$textbox1.TabIndex = 10
	#
	# buttonЗагрузитьДанныеИзФай
	#
	$buttonЗагрузитьДанныеИзФай.AutoSize = $True
	$buttonЗагрузитьДанныеИзФай.Dock = 'Right'
	$buttonЗагрузитьДанныеИзФай.Location = '449, 16'
	$buttonЗагрузитьДанныеИзФай.Name = 'buttonЗагрузитьДанныеИзФай'
	$buttonЗагрузитьДанныеИзФай.Size = '160, 21'
	$buttonЗагрузитьДанныеИзФай.TabIndex = 9
	$buttonЗагрузитьДанныеИзФай.Text = 'Загрузить данные из файла'
	$buttonЗагрузитьДанныеИзФай.UseVisualStyleBackColor = $True
	$buttonЗагрузитьДанныеИзФай.add_Click($button2_Click)
	#
	# buttonОбновитьКонфигурацио
	#
	$buttonОбновитьКонфигурацио.Location = '12, 231'
	$buttonОбновитьКонфигурацио.Name = 'buttonОбновитьКонфигурацио'
	$buttonОбновитьКонфигурацио.Size = '89, 51'
	$buttonОбновитьКонфигурацио.TabIndex = 3
	$buttonОбновитьКонфигурацио.Text = 'Обновить конфигурационные файлы'
	$buttonОбновитьКонфигурацио.UseVisualStyleBackColor = $True
	$buttonОбновитьКонфигурацио.Visible = $False
	#
	# tabcontrol1
	#
	$tabcontrol1.Controls.Add($tabpage1)
	$tabcontrol1.Controls.Add($tabpage2)
	$tabcontrol1.Dock = 'Fill'
	$tabcontrol1.Location = '0, 0'
	$tabcontrol1.Name = 'tabcontrol1'
	$tabcontrol1.SelectedIndex = 0
	$tabcontrol1.Size = '626, 270'
	$tabcontrol1.TabIndex = 14
	#
	# tabpage1
	#
	$tabpage1.Controls.Add($datagridview1)
	$tabpage1.Controls.Add($groupbox1)
	$tabpage1.Location = '4, 22'
	$tabpage1.Name = 'tabpage1'
	$tabpage1.Padding = '3, 3, 3, 3'
	$tabpage1.Size = '618, 244'
	$tabpage1.TabIndex = 0
	$tabpage1.Text = 'Windows Updates'
	$tabpage1.UseVisualStyleBackColor = $True
	#
	# datagridview1
	#
	$datagridview1.AutoSizeColumnsMode = 'AllCells'
	$datagridview1.ColumnHeadersHeightSizeMode = 'AutoSize'
	[void]$datagridview1.Columns.Add($KBArticleID)
	[void]$datagridview1.Columns.Add($Title)
	[void]$datagridview1.Columns.Add($Category)
	[void]$datagridview1.Columns.Add($UpdatePath)
	$datagridview1.Dock = 'Fill'
	$datagridview1.Location = '3, 43'
	$datagridview1.Name = 'datagridview1'
	$datagridview1.Size = '612, 198'
	$datagridview1.TabIndex = 0
	#
	# groupbox1
	#
	$groupbox1.Controls.Add($textbox1)
	$groupbox1.Controls.Add($buttonЗагрузитьДанныеИзФай)
	$groupbox1.Dock = 'Top'
	$groupbox1.Location = '3, 3'
	$groupbox1.Name = 'groupbox1'
	$groupbox1.Size = '612, 40'
	$groupbox1.TabIndex = 10
	$groupbox1.TabStop = $False
	$groupbox1.Text = 'Путь до файла результатов сканирования неустановленных обновлений'
	#
	# textbox1
	#
	$textbox1.Dock = 'Fill'
	$textbox1.Location = '3, 16'
	$textbox1.Name = 'textbox1'
	$textbox1.ReadOnly = $True
	$textbox1.Size = '446, 20'
	$textbox1.TabIndex = 10
	#
	# buttonЗагрузитьДанныеИзФай
	#
	#$buttonЗагрузитьДанныеИзФай.AutoSize = $True
	#$buttonЗагрузитьДанныеИзФай.Dock = 'Right'
	#$buttonЗагрузитьДанныеИзФай.Location = '449, 16'
	#$buttonЗагрузитьДанныеИзФай.Name = 'buttonЗагрузитьДанныеИзФай'
	#$buttonЗагрузитьДанныеИзФай.Size = '160, 21'
	#$buttonЗагрузитьДанныеИзФай.TabIndex = 9
	#$buttonЗагрузитьДанныеИзФай.Text = 'Загрузить данные из файла'
	#$buttonЗагрузитьДанныеИзФай.UseVisualStyleBackColor = $True
	#$buttonЗагрузитьДанныеИзФай.add_Click($button2_Click)
	#
	# tabpage2
	#
	$tabpage2.Controls.Add($datagridview2)
	$tabpage2.Controls.Add($groupbox4)
	$tabpage2.Location = '4, 22'
	$tabpage2.Name = 'tabpage2'
	$tabpage2.Padding = '3, 3, 3, 3'
	$tabpage2.Size = '618, 244'
	$tabpage2.TabIndex = 1
	$tabpage2.Text = 'Applications'
	$tabpage2.UseVisualStyleBackColor = $True
	#
	# datagridview2
	#
	$datagridview2.AutoSizeColumnsMode = 'AllCells'
	$datagridview2.ColumnHeadersHeightSizeMode = 'AutoSize'
	[void]$datagridview2.Columns.Add($ProductName)
	[void]$datagridview2.Columns.Add($VersionFrom)
	[void]$datagridview2.Columns.Add($VersionTo)
	[void]$datagridview2.Columns.Add($UninstallSting)
	$datagridview2.Dock = 'Fill'
	$datagridview2.Location = '3, 43'
	$datagridview2.Name = 'datagridview2'
	$datagridview2.Size = '612, 198'
	$datagridview2.TabIndex = 2
	#
	# groupbox4
	#
	$groupbox4.Controls.Add($textbox2)
	$groupbox4.Controls.Add($button3)
	$groupbox4.Dock = 'Top'
	$groupbox4.Location = '3, 3'
	$groupbox4.Name = 'groupbox4'
	$groupbox4.Size = '612, 40'
	$groupbox4.TabIndex = 14
	$groupbox4.TabStop = $False
	$groupbox4.Text = 'Путь до файла результатов сканирования неустановленных приложений'
	#
	# textbox2
	#
	$textbox2.Dock = 'Fill'
	$textbox2.Location = '3, 16'
	$textbox2.Name = 'textbox2'
	$textbox2.ReadOnly = $True
	$textbox2.Size = '446, 20'
	$textbox2.TabIndex = 8
	#
	# button3
	#
	$button3.AutoSize = $True
	$button3.Dock = 'Right'
	$button3.Location = '449, 16'
	$button3.Name = 'button3'
	$button3.Size = '160, 21'
	$button3.TabIndex = 11
	$button3.Text = 'Загрузить данные из файла'
	$button3.UseVisualStyleBackColor = $True
	$button3.add_Click($button3_Click)
	#
	# ProductName
	#
	$ProductName.HeaderText = 'ProductName'
	$ProductName.Name = 'ProductName'
	$ProductName.Width = 97
	#
	# VersionFrom
	#
	$VersionFrom.HeaderText = 'VersionFrom'
	$VersionFrom.Name = 'VersionFrom'
	$VersionFrom.Width = 90
	#
	# VersionTo
	#
	$VersionTo.HeaderText = 'VersionTo'
	$VersionTo.Name = 'VersionTo'
	$VersionTo.Width = 80
	#
	# UninstallSting
	#
	$UninstallSting.HeaderText = 'UninstallSting'
	$UninstallSting.Name = 'UninstallSting'
	$UninstallSting.Width = 96
	#
	# buttonЗагрузитьОбновленияС
	#
	$buttonЗагрузитьОбновленияС.Location = '12, 121'
	$buttonЗагрузитьОбновленияС.Name = 'buttonЗагрузитьОбновленияС'
	$buttonЗагрузитьОбновленияС.Size = '89, 49'
	$buttonЗагрузитьОбновленияС.TabIndex = 4
	$buttonЗагрузитьОбновленияС.Text = 'Загрузить обновления с SCCM'
	$buttonЗагрузитьОбновленияС.UseVisualStyleBackColor = $True
	$buttonЗагрузитьОбновленияС.add_Click($buttonЗагрузитьОбновленияС_Click)
	#
	# UpdatePath
	#
	$UpdatePath.HeaderText = 'Update Path'
	$UpdatePath.Name = 'UpdatePath'
	$UpdatePath.Width = 92
	#
	# Category
	#
	$Category.HeaderText = 'Category'
	$Category.Name = 'Category'
	$Category.Width = 74
	#
	# Title
	#
	$Title.HeaderText = 'Title'
	$Title.Name = 'Title'
	$Title.Width = 52
	#
	# KBArticleID
	#
	$KBArticleID.HeaderText = 'KB Article ID'
	$KBArticleID.Name = 'KBArticleID'
	$KBArticleID.Width = 92
	#
	# splitcontainer4
	#
	$splitcontainer4.Dock = 'Fill'
	$splitcontainer4.Location = '0, 0'
	$splitcontainer4.Name = 'splitcontainer4'
	$splitcontainer4.Orientation = 'Horizontal'
	[void]$splitcontainer4.Panel1.Controls.Add($tabcontrol1)
	[void]$splitcontainer4.Panel2.Controls.Add($richtextbox1)
	$splitcontainer4.Size = '626, 389'
	$splitcontainer4.SplitterDistance = 270
	$splitcontainer4.TabIndex = 15
	#
	# richtextbox1
	#
	$richtextbox1.Dock = 'Fill'
	$richtextbox1.Location = '0, 0'
	$richtextbox1.Name = 'richtextbox1'
	$richtextbox1.Size = '626, 115'
	$richtextbox1.TabIndex = 0
	$richtextbox1.Text = ''
	#
	# openfiledialog2
	#
	$openfiledialog2.FileName = 'openfiledialog2'
	#
	# buttonСканироватьПриложени
	#
	$buttonСканироватьПриложени.Location = '12, 67'
	$buttonСканироватьПриложени.Name = 'buttonСканироватьПриложени'
	$buttonСканироватьПриложени.Size = '89, 48'
	$buttonСканироватьПриложени.TabIndex = 5
	$buttonСканироватьПриложени.Text = 'Сканировать приложения'
	$buttonСканироватьПриложени.UseVisualStyleBackColor = $True
	$buttonСканироватьПриложени.add_Click($buttonСканироватьПриложени_Click)
	$splitcontainer4.ResumeLayout()
	$groupbox4.ResumeLayout()
	$tabpage2.ResumeLayout()
	$tabpage1.ResumeLayout()
	$tabcontrol1.ResumeLayout()
	$groupbox1.ResumeLayout()
	$menustrip1.ResumeLayout()
	$statusstrip1.ResumeLayout()
	$splitcontainer1.ResumeLayout()
	$MainForm.ResumeLayout()
	#endregion Generated Form Code

	#----------------------------------------------

	#Save the initial state of the form
	$InitialFormWindowState = $MainForm.WindowState
	#Init the OnLoad event to correct the initial state of the form
	$MainForm.add_Load($Form_StateCorrection_Load)
	#Clean up the control events
	$MainForm.add_FormClosed($Form_Cleanup_FormClosed)
	#Store the control values when form is closing
	$MainForm.add_Closing($Form_StoreValues_Closing)
	#Show the Form
	return $MainForm.ShowDialog()

}
#endregion Source: MainForm.psf

#region Source: Globals.ps1
	#--------------------------------------------
	# Declare Global Variables and Functions here
	#--------------------------------------------
	
	#Sample function that provides the location of the script
	function Get-ScriptDirectory
	{
	<#
		.SYNOPSIS
			Get-ScriptDirectory returns the proper location of the script.
	
		.OUTPUTS
			System.String
		
		.NOTES
			Returns the correct path within a packaged executable.
	#>
		[OutputType([string])]
		param ()
		if ($hostinvocation -ne $null)
		{
			Split-Path $hostinvocation.MyCommand.path
		}
		else
		{
			Split-Path $script:MyInvocation.MyCommand.Path
		}
	}
	
	function write-log
	{
		[CmdletBinding()]
		Param (
			[Parameter(Mandatory = $true, Position = 0, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
			[AllowEmptyCollection()]
			[Alias('Text')]
			[string]$Message,
			[Parameter(Mandatory = $false, Position = 1)]
			[ValidateNotNullorEmpty()]
			[string]$Component = "Main",
			[Parameter(Mandatory = $false, Position = 2)]
			[ValidateSet('Info', 'Warning', 'Error')]
			[string]$MessageType = 'Info',
			[Parameter(Mandatory = $false, Position = 3)]
			[ValidateNotNullorEmpty()]
			[string]$LogFileName = (Get-Date -Format 'yyyy-MM-dd').ToString() + ".log",
			[Parameter(Mandatory = $false, Position = 4)]
			[ValidateNotNullorEmpty()]
			[string]$LogFileDirectory = "$env:SystemDrive\Temp\Logs\Software\",
			[Parameter(Mandatory = $false, Position = 5)]
			[ValidateNotNullorEmpty()]
			[string]$Source = "SCCM Application Detection Method"
		)
		$MessageType_to_int = @{
			'Info' = '1'
			'Warning' = '2'
			'Error' = '3'
		}
		$MessageType_to_Event = @{
			'Info' = 'Information'
			'Warning' = 'Warning'
			'Error' = 'Error'
		}
		[string]$LogTime = (Get-Date -Format 'HH:mm:ss.fff').ToString()
		[string]$LogDate = (Get-Date -Format 'MM-dd-yyyy').ToString()
		if (!(Test-Path -Path $LogFileDirectory))
		{
			New-Item -ItemType Directory -Path $LogFileDirectory
		}
		Try
		{
			$params = @{
				LogName = 'Application'
				Source = 'Configuration Manager Agent'
				EntryType = $MessageType_to_Event[$MessageType]
				EventId = 1000
				Message = $Message
			}
			Write-EventLog @params -ErrorAction SilentlyContinue
			
			"<![LOG[$Message]LOG]!><time=`"$LogTime" + "180`" date=`"$LogDate`" component=`"$Component`" context="""" type=""$($MessageType_to_int[$MessageType])"" thread=""0"" file=""$Source"">" | out-file $LogFileDirectory\$LogFileName -Append -Encoding utf8 -ErrorAction SilentlyContinue
		}
		catch { }
	}
	
	Function Get-InstalledApplication
	{
	<#
		.SYNOPSIS
			Retrieves information about installed applications.
		.DESCRIPTION
			Retrieves information about installed applications by querying the registry. You can specify an application name, a product code, or both.
			Returns information about application publisher, name & version, product code, uninstall string, install source, location, date, and application architecture.
		.PARAMETER Name
			The name of the application to retrieve information for. Performs a contains match on the application display name by default.
		.PARAMETER Exact
			Specifies that the named application must be matched using the exact name.
		.PARAMETER WildCard
			Specifies that the named application must be matched using a wildcard search.
		.PARAMETER RegEx
			Specifies that the named application must be matched using a regular expression search.
		.PARAMETER ProductCode
			The product code of the application to retrieve information for.
		.PARAMETER IncludeUpdatesAndHotfixes
			Include matches against updates and hotfixes in results.
		.EXAMPLE
			Get-InstalledApplication -Name 'Adobe Flash'
		.EXAMPLE
			Get-InstalledApplication -ProductCode '{1AD147D0-BE0E-3D6C-AC11-64F6DC4163F1}'
		.NOTES
		.LINK
			http://psappdeploytoolkit.com
	#>
		[CmdletBinding()]
		Param (
			[Parameter(Mandatory = $false)]
			[ValidateNotNullorEmpty()]
			[string[]]$Name,
			[Parameter(Mandatory = $false)]
			[switch]$Exact = $false,
			[Parameter(Mandatory = $false)]
			[switch]$WildCard = $false,
			[Parameter(Mandatory = $false)]
			[switch]$RegEx = $false,
			[Parameter(Mandatory = $false)]
			[ValidateNotNullorEmpty()]
			[string]$ProductCode,
			[Parameter(Mandatory = $false)]
			[switch]$IncludeUpdatesAndHotfixes,
			[Parameter(Mandatory = $false)]
			[string]$LogName
		)
		
		Begin
		{
			## Get the name of this function and write header
			[string]${CmdletName} = $PSCmdlet.MyInvocation.MyCommand.Name
			Write-Log -Message "Start detection method" -MessageType Info -Component $CmdletName -LogFileName $LogName
		}
		Process
		{
			If ($name)
			{
				Write-Log -Message "Get information for installed Application Name(s) [$($name -join ', ')]..." -MessageType Info -Component $CmdletName -LogFileName $LogName
			}
			If ($productCode)
			{
				Write-Log -Message "Get information for installed Product Code [$ProductCode]..." -MessageType Info -Component $CmdletName -LogFileName $LogName
			}
			[string[]]$regKeyApplications = 'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall', 'HKLM:SOFTWARE\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall'
			## Enumerate the installed applications from the registry for applications that have the "DisplayName" property
			[psobject[]]$regKeyApplication = @()
			ForEach ($regKey in $regKeyApplications)
			{
				If (Test-Path -LiteralPath $regKey -ErrorAction 'SilentlyContinue' -ErrorVariable '+ErrorUninstallKeyPath')
				{
					[psobject[]]$UninstallKeyApps = Get-ChildItem -LiteralPath $regKey -ErrorAction 'SilentlyContinue' -ErrorVariable '+ErrorUninstallKeyPath'
					ForEach ($UninstallKeyApp in $UninstallKeyApps)
					{
						Try
						{
							[psobject]$regKeyApplicationProps = Get-ItemProperty -LiteralPath $UninstallKeyApp.PSPath -ErrorAction 'Stop'
							If ($regKeyApplicationProps.DisplayName) { [psobject[]]$regKeyApplication += $regKeyApplicationProps }
						}
						Catch
						{
							Write-Log -Message "Unable to enumerate properties from registry key path [$($UninstallKeyApp.PSPath)]. `n$(Resolve-Error)" -MessageType Info -Component $CmdletName -LogFileName $LogName
							Continue
						}
					}
				}
			}
			If ($ErrorUninstallKeyPath)
			{
				Write-Log -Message "The following error(s) took place while enumerating installed applications from the registry. `n$(Resolve-Error -ErrorRecord $ErrorUninstallKeyPath)" -MessageType Info -Component $CmdletName -LogFileName $LogName
			}
			
			## Create a custom object with the desired properties for the installed applications and sanitize property details
			[psobject[]]$installedApplication = @()
			ForEach ($regKeyApp in $regKeyApplication)
			{
				Try
				{
					[string]$appDisplayName = ''
					[string]$appDisplayVersion = ''
					[string]$appPublisher = ''
					
					## Bypass any updates or hotfixes
					If (-not $IncludeUpdatesAndHotfixes)
					{
						If ($regKeyApp.DisplayName -match '(?i)kb\d+') { Continue }
						If ($regKeyApp.DisplayName -match 'Cumulative Update') { Continue }
						If ($regKeyApp.DisplayName -match 'Security Update') { Continue }
						If ($regKeyApp.DisplayName -match 'Hotfix') { Continue }
					}
					
					## Remove any control characters which may interfere with logging and creating file path names from these variables
					$appDisplayName = $regKeyApp.DisplayName -replace '[^\u001F-\u007F]', ''
					$appDisplayVersion = $regKeyApp.DisplayVersion -replace '[^\u001F-\u007F]', ''
					$appPublisher = $regKeyApp.Publisher -replace '[^\u001F-\u007F]', ''
					
					## Determine if application is a 64-bit application
					[boolean]$Is64BitApp = If (($is64Bit) -and ($regKeyApp.PSPath -notmatch '^Microsoft\.PowerShell\.Core\\Registry::HKEY_LOCAL_MACHINE\\SOFTWARE\\Wow6432Node')) { $true }
					Else { $false }
					
					If ($ProductCode)
					{
						## Verify if there is a match with the product code passed to the script
						If ($regKeyApp.PSChildName -match [regex]::Escape($productCode))
						{
							Write-Log -Message "Found installed application [$appDisplayName] version [$appDisplayVersion] matching product code [$productCode]." -MessageType Info -Component 'Registry'
							$installedApplication += New-Object -TypeName 'PSObject' -Property @{
								UninstallSubkey = $regKeyApp.PSChildName
								ProductCode = If ($regKeyApp.PSChildName -match $MSIProductCodeRegExPattern) { $regKeyApp.PSChildName } Else { [string]::Empty }
								DisplayName = $appDisplayName
								DisplayVersion = $appDisplayVersion
								UninstallString = $regKeyApp.UninstallString
								InstallSource = $regKeyApp.InstallSource
								InstallLocation = $regKeyApp.InstallLocation
								InstallDate = $regKeyApp.InstallDate
								Publisher = $appPublisher
								Is64BitApplication = $Is64BitApp
							}
						}
					}
					
					If ($name)
					{
						## Verify if there is a match with the application name(s) passed to the script
						ForEach ($application in $Name)
						{
							$applicationMatched = $false
							If ($exact)
							{
								#  Check for an exact application name match
								If ($regKeyApp.DisplayName -eq $application)
								{
									$applicationMatched = $true
									Write-Log -Message "Found installed application [$appDisplayName] version [$appDisplayVersion] using exact name matching for search term [$application]." -MessageType Info -Component $CmdletName -LogFileName $LogName
								}
							}
							ElseIf ($WildCard)
							{
								#  Check for wildcard application name match
								If ($regKeyApp.DisplayName -like $application)
								{
									$applicationMatched = $true
									Write-Log -Message "Found installed application [$appDisplayName] version [$appDisplayVersion] using wildcard matching for search term [$application]." -MessageType Info -Component $CmdletName -LogFileName $LogName
								}
							}
							ElseIf ($RegEx)
							{
								#  Check for a regex application name match
								If ($regKeyApp.DisplayName -match $application)
								{
									$applicationMatched = $true
									Write-Log -Message "Found installed application [$appDisplayName] version [$appDisplayVersion] using regex matching for search term [$application]." -MessageType Info -Component $CmdletName -LogFileName $LogName
								}
							}
							#  Check for a contains application name match
							ElseIf ($regKeyApp.DisplayName -match [regex]::Escape($application))
							{
								$applicationMatched = $true
								Write-Log -Message "Found installed application [$appDisplayName] version [$appDisplayVersion] using contains matching for search term [$application]." -MessageType Info -Component $CmdletName -LogFileName $LogName
							}
							
							If ($applicationMatched)
							{
								[array]$installedApplication += New-Object -TypeName 'PSObject' -Property @{
									UninstallSubkey = $regKeyApp.PSChildName
									ProductCode = If ($regKeyApp.PSChildName -match $MSIProductCodeRegExPattern) { $regKeyApp.PSChildName } Else { [string]::Empty }
									DisplayName = $appDisplayName
									DisplayVersion = $appDisplayVersion
									UninstallString = $regKeyApp.UninstallString
									InstallSource = $regKeyApp.InstallSource
									InstallLocation = $regKeyApp.InstallLocation
									InstallDate = $regKeyApp.InstallDate
									Publisher = $appPublisher
									Is64BitApplication = $Is64BitApp
								}
							}
						}
					}
				}
				Catch
				{
					Write-Log -Message "Failed to resolve application details from registry for [$appDisplayName]. `n$(Resolve-Error)" -MessageType Error -Component $CmdletName -LogFileName $LogName
					Continue
				}
			}
			if (!$installedApplication)
			{
				If ($name)
				{
					Write-Log -Message "Failed to get information for installed Application Name(s) [$($name -join ', ')]..." -MessageType Error -Component $CmdletName -LogFileName $LogName
				}
				If ($productCode)
				{
					Write-Log -Message "Failed to get information for installed Product Code [$ProductCode]..." -MessageType Error -Component $CmdletName -LogFileName $LogName
				}
				Write-Log -Message "Finish detection method" -MessageType Info -LogFileName $LogName
			}
			Write-Output -InputObject $installedApplication
		}
	}
	
	# get all published updates from SCCM
	function Get-MissingUpdates
	{
		[CmdletBinding()]
		Param (
			[Parameter(Mandatory = $true)]
			[AllowEmptyCollection()]
			[string]$Path = $PSScriptRoot.ToString(),
			[Parameter(Mandatory = $true)]
			[AllowEmptyCollection()]
			[string]$date = (Get-Date -Format 'yyyy-MM-dd hh-mm').ToString()
		)
		$update_lists = Get-Content "$path\update_path.csv" | ConvertFrom-Csv
		$PathToCABFile = "$path\wsusscn2.cab"
		if (Test-Path -Path $PathToCABFile)
		{
			Add-ToLog -Message "Поиск обновлений. Это займёт 5-10 минут."
			$UpdateSession = New-Object -ComObject "Microsoft.Update.Session"
			$UpdateServiceManager = New-Object -ComObject "Microsoft.Update.ServiceManager"
			$UpdateService = $UpdateServiceManager.AddScanPackageService("Offline Sync Service", $PathToCABFile, 1)
			$UpdateSearcher = $UpdateSession.CreateUpdateSearcher()
			$UpdateSearcher.ServerSelection = 3
			$UpdateSearcher.ServiceID = $UpdateService.ServiceID.ToString()
			$SearchResults = $UpdateSearcher.Search("IsInstalled=0")
			$Updates = $SearchResult.Updates
			$result = @()
			If ($SearchResults.Updates.Count -eq 0)
			{
				Add-ToLog -Message "Нет применимых обновлений."
			}
			else
			{
				Add-ToLog -Message "Список применимых предметов на машине при использовании wssuscan.cab (Count = $($searchResults.Updates.count)):"
				foreach ($searchResult in $searchResults.Updates)
				{
					if ($searchResult.KBArticleIDs.Item(0) -in $update_lists.ArticleID)
					{
						Add-ToLog -Message "$($searchResult.KBArticleIDs.Item(0)) обновление не установлено." -Color Red
						#$temp = $update_lists | Where-Object {$_.UpdateID -eq $item.UpdateID}
						#$temp = $update_lists | Where-Object {$_.ArticleID -eq $searchResult.KBArticleIDs.Item(0)}
						#foreach ($update_list in $temp)
						#{
						$myHashtable = @{
							Title = $searchResult.Title
							MoreInfoUrls = $searchResult.MoreInfoUrls.Item(0)
							KBArticleIDs = $searchResult.KBArticleIDs.Item(0)
							Categories = $searchResult.Categories[0].Name
							UpdateID = $searchResult.Identity.UpdateID
							TitleSCCM = ($update_lists | Where-Object { $_.UpdateID -eq $searchResult.Identity.UpdateID })[0].Title
							Description = ($update_lists | Where-Object { $_.UpdateID -eq $searchResult.Identity.UpdateID })[0].Description
							SCCMContentID = ($update_lists | Where-Object { $_.UpdateID -eq $searchResult.Identity.UpdateID })[0].SCCMContentID
							SCCMContentPath = ($update_lists | Where-Object { $_.UpdateID -eq $searchResult.Identity.UpdateID })[0].SCCMContentPath
						}
						#}
						$update = [pscustomobject]$myHashtable
						$datagridview1.Rows.Add(@($myHashtable['Title'], $searchResult.KBArticleIDs.Item(0)))
						$result += , $update
					}
					else
					{
						Add-ToLog -Message "$($searchResult.KBArticleIDs.Item(0)) Обновление не установлно, но его нет на SCCM. Устанавливать не нужно. " -Color DarkGoldenrod
					}
				}
				if ($result)
				{
					$fileName = "C:\$env:COMPUTERNAME-$(get-date -Format "yyyy.MM.dd")"
					$result | ConvertTo-Html | Out-File "$Path\Result\$env:COMPUTERNAME\$env:COMPUTERNAME-$date-missing_updates.html"
					$result | Export-Excel -Path "$Path\Result\$env:COMPUTERNAME\$env:COMPUTERNAME-$date-missing_updates.xlsx" -FreezeTopRow -AutoFilter -AutoSize
					$textbox1.Text = "$Path\Result\$env:COMPUTERNAME\$env:COMPUTERNAME-$date-missing_updates.xlsx"
				}
				Add-ToLog -Message @"
Output files:
"$Path\Result\$env:COMPUTERNAME\$env:COMPUTERNAME-$date-missing_updates.html"
"$Path\Result\$env:COMPUTERNAME\$env:COMPUTERNAME-$date-missing_updates.xlsx"
"@
			}
		}
		else
		{
			Add-ToLog -Message 'File wsusscn2.cab is missing'
		}
	}
	
	# get all published updates from SCCM
	function Get-SCCMKBsPath
	{
		[CmdletBinding()]
		Param (
			[Parameter(Mandatory = $true)]
			[AllowEmptyCollection()]
			[Alias('Text')]
			[string]$Path = 'C:\temp\'
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
		try
		{
			$res = @()
			$SQLServer = "SCCMandSQL.rprokhorov.local"
			$SQLDBName = "CM_PRV"
			$ConnectionString = "Server = $SQLServer; Database = $SQLDBName; Integrated Security = True"
			$Connection = New-Object System.Data.SqlClient.SqlConnection
			$Connection.ConnectionString = $ConnectionString
			$Connection.Open()
			$Command = $Connection.CreateCommand()
			$Command.CommandText = $sqlquery
			$Command.CommandTimeout = 0
			$Result = $Command.ExecuteReader()
			$Table = new-object "System.Data.DataTable"
			$Table.Load($Result)
			$i = 0
			$Total = $Table.Rows.Count
			
			if ($Table.Rows.Count -ne 0)
			{
				$folders = (Get-ChildItem -Path '\\SCCMandSQL.rprokhorov.local\Share\Updates\' -Recurse) | ? { $_.Attributes -eq 'Directory' }
				$folderHash = @{ }
				foreach ($folder in $folders) { $folderHash.($folder.BaseName) = $folder.FullName }
				foreach ($row in $Table.Rows)
				{
					$i = $i + 1
					Add-ToLog -Message "$Total \ $i : $($row.ArticleID)"
					$hash = @{
						ArticleID = $row.ArticleID;
						BulletinID = $row.BulletinID;
						ISExpired = $row.ISExpired;
						Title = $row.Title;
						Description = $row.Description;
						InfoURL = $row.InfoURL;
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
				Add-ToLog -Message "Export `$Res to file  $Path\update_path.csv"
				$Res | ConvertTo-Csv | Out-File  $Path\update_path.csv -force
			}
		}
		catch { }
	}
	
	# -= SCAN Aplicaions =-
	function Get-ScanApplications
	{
		[CmdletBinding()]
		Param (
			[Parameter(Mandatory = $true)]
			[AllowEmptyCollection()]
			[string]$Path = $PSScriptRoot.ToString(),
			[Parameter(Mandatory = $true)]
			[AllowEmptyCollection()]
			[string]$date = (Get-Date -Format 'yyyy-MM-dd hh-mm').ToString()
			
		)
		$result_excel = @()
		$detections = [string](Get-Content "$path\config.json") | ConvertfROM-Json
		ForEach ($detection in $detections.Applications)
		{
			$counter = 0
			$appName = $detection.appName
			$appVersion = $detection.appVersion
			$appDetectionVersion = $detection.appDetectionVersion
			$appDetectionName = $detection.appDetectionName
			
			$LogName = "Detection Method $appName - $appVersion.log" -replace '\*', ' '
			$Version = "$appDetectionVersion"
			[array]$Products = Get-InstalledApplication -Name "*$appDetectionName*" -WildCard -LogName $LogName
			
			if ($Products)
			{
				foreach ($product in $Products)
				{
					if ($product.DisplayVersion -ge $Version)
					{
						Write-Log -Message "Application $($product.DisplayName) [$($product.DisplayVersion)] has version greater or equal $Version" -MessageType Info -Component Main -LogFileName $LogName
						$counter++
					}
					else
					{
						Write-Log -Message "Application $($product.DisplayName) [$($product.DisplayVersion)] has not version greater or equal $Version" -MessageType Error -Component Main -LogFileName $LogName
						$result += , "$($product.DisplayVersion)] has not version greater or equal $Version"
					}
				}
				if ($counter -eq $products.Count -and $counter -ne 0)
				{
					Add-ToLog -Message "$appName $appVersion has a right version" -Color Green
					$action = "Ok"
				}
				else
				{
					Add-ToLog -Message "$appName $appVersion has not a right version" -Color Red
					$action = "Update"
					$myHashtable = [ordered]@{
						ConfigAppName = $detection.appName
						ConfigAppVersion = $detection.appVersion
						ConfigAppDetectionVersion = $detection.appDetectionVersion
						ConfigAppDetectionName = $detection.appDetectionName
						Action = $action
						ProductDisplayName = $product.DisplayName
						ProductDisplayVersion = $product.DisplayVersion
						ProductInstallDate = $product.InstallDate
						ProductPublisher = $product.Publisher
						ProductProductCode = $product.ProductCode
						ProductInstallLocation = $product.InstallLocation
						ProductInstallSource = $product.InstallSource
						ProductUninstallString = $product.UninstallString
					}
					$update = [pscustomobject]$myHashtable
					$datagridview2.Rows.Add(@($myHashtable['ProductDisplayName'], $myHashtable['ProductDisplayVersion'], $myHashtable['ConfigAppDetectionVersion'],$myHashtable['ProductDisplayName']))
					$result_excel += , $update
				}
			}
			else
			{
				#$action = "Not found"
				Add-ToLog -Message "$appName $appVersion was not installed" -Color DarkGoldenrod
				#$myHashtable = [ordered]@{
				#    ConfigAppName = $detection.appName
				#    ConfigAppVersion = $detection.appVersion
				#    ConfigAppDetectionVersion = $detection.appDetectionVersion
				#    ConfigAppDetectionName = $detection.appDetectionName
				#    Action = $action
				#    ProductDisplayName    = ''
				#    ProductDisplayVersion = ''
				#    ProductInstallDate = ''
				#    ProductPublisher   = ''
				#    ProductProductCode	 = ''
				#    ProductInstallLocation  = ''
				#    ProductInstallSource  = ''
				#    ProductUninstallString = ''
				#}
				#$update = [pscustomobject]$myHashtable
				#$result_excel += , $update
			}
			Write-Log -Message "Detection method was finished" -MessageType Info -Component Main -LogFileName $LogName
		}
		if ($result_excel)
		{
			$fileName = "C:\$env:COMPUTERNAME-$(get-date -Format "yyyy.MM.dd")"
			$result_excel | Export-Excel -Path "$Path\Result\$env:COMPUTERNAME\$env:COMPUTERNAME-$date-Update_applications.xlsx" -FreezeTopRow -AutoFilter -AutoSize
			$result_excel | ConvertTo-Html | Out-File "$Path\Result\$env:COMPUTERNAME\$env:COMPUTERNAME-$date-Update_applications.html"
			$textbox2.Text = "$Path\Result\$env:COMPUTERNAME\$env:COMPUTERNAME-$date-Update_applications.xlsx"
		}
		
	}
	
	function Get-UpdatesFromFile
	{
		[CmdletBinding()]
		Param (
			[Parameter(Mandatory = $true)]
			[AllowEmptyCollection()]
			[string]$Path
		)
		if ($path)
		{
			$updates = Import-Excel $path
			$datagridview1.Rows.Clear()
			foreach ($update in $updates)
			{
				$datagridview1.Rows.Add(@($update.KBArticleIDs, $update.Title, $update.Categories, $update.SCCMContentPath))
			}
		}
	}
	
	function Get-ApplicationsFromFile
	{
		[CmdletBinding()]
		Param (
			[Parameter(Mandatory = $true)]
			[AllowEmptyCollection()]
			[string]$Path
		)
		if ($path)
		{
			$Applications = Import-Excel $path
			$datagridview2.Rows.Clear()
			foreach ($Application in $Applications)
			{
				$datagridview2.Rows.Add(@($Application.ProductDisplayName, $Application.ProductDisplayVersion, $Application.ConfigAppVersion, $Application.ProductUninstallString))
			}
		}
	}
	
	function Invoke-UnzipFile
	{
		Param (
			[Parameter(Mandatory = $true)]
			[AllowEmptyCollection()]
			[string]$FilePath,
			[Parameter(Mandatory = $true)]
			[AllowEmptyCollection()]
			[string]$Destination
		)
		$shell = New-Object -ComObject shell.application
		$zip = $shell.NameSpace($FilePath)
		$result = @()
		New-Item -Path $Destination -ErrorAction SilentlyContinue
		foreach ($item in $zip.items())
		{
			$shell.Namespace($Destination).CopyHere($item)
			$result += , $item.Path
		}
		return $result
		#[System.IO.Compression.ZipFile]::ExtractToDirectory($FilePath, $Destination)
	}
	
	function Add-ToLog
	{
		Param (
			[Parameter(Mandatory = $true)]
			[AllowEmptyCollection()]
			[string]$Message,
			[switch]$NoNewLine,
			[Parameter(Mandatory = $false)]
			[ValidateSet("Red", "DarkGoldenrod", "Green")]
			[string]$Color
		)
		if ($NoNewLine)
		{
			if (!$Color)
			{
				$richtextbox1.AppendText($Message)
			}
			else
			{
				$richtextbox1.SelectionStart = $richtextbox1.TextLength
				$richtextbox1.SelectionLength = 0
				$richtextbox1.SelectionColor = $color
				$richtextbox1.AppendText($Message)
				$richtextbox1.SelectionColor = $richtextbox1.ForeColor
			}
		}
		else
		{
			if (!$Color)
			{
				$richtextbox1.AppendText($Message + "`n")
			}
			else
			{
				$richtextbox1.SelectionStart = $richtextbox1.TextLength
				$richtextbox1.SelectionLength = 0
				$richtextbox1.SelectionColor = $color
				$richtextbox1.AppendText($Message + "`n")
				$richtextbox1.SelectionColor = $richtextbox1.ForeColor
	
			}
		}
		#set the current caret position to the end
		$richTextBox1.SelectionStart = $richTextBox1.Text.Length;
		# scroll it automatically
		$richTextBox1.ScrollToCaret();
	}
	
	[string]$path = Get-ScriptDirectory
	
	#Sample variable that provides the location of the script
	[string]$ScriptDirectory = Get-ScriptDirectory
	
	
	
#endregion Source: Globals.ps1

#Start the application
If (-NOT ([Security.Principal.WindowsPrincipal] [Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator))
{
  # Relaunch as an elevated process:
  Start-Process powershell.exe "-File",('"{0}"' -f $MyInvocation.MyCommand.Path) -Verb RunAs
  exit
}
else
{
    Main ($CommandLine)
}
