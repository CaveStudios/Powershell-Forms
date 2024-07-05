# Load necessary assemblies
Add-Type -AssemblyName System.Windows.Forms
Add-Type -AssemblyName System.Drawing

# Create the form
$form = New-Object System.Windows.Forms.Form
$form.Text = "PowerShell Common Form Object Examples"
$form.Size = New-Object System.Drawing.Size(900, 700)
#$form.Icon = [System.Drawing.Icon]::ExtractAssociatedIcon("path-to-your-icon-file.ico")
$form.StartPosition = "CenterScreen"
$form.BackColor = "lightgreen"
$form.FormBorderStyle = "Fixed3D"  # Set the border style (options: None, FixedSingle, Fixed3D, Sizable)
$form.TopMost = $false  # Always keep the form on top of other windows
$form.Opacity = 1.0  # Set the form's opacity (0.0 to 1.0, where 1.0 is fully opaque)

# TextBox Label
$textBoxLabel = New-Object System.Windows.Forms.Label
$textBoxLabel.Text = "1) TextBox"
$textBoxLabel.Location = New-Object System.Drawing.Point(10, 40)
$form.Controls.Add($textBoxLabel)
# Create a text box
$textBox = New-Object System.Windows.Forms.TextBox
$textBox.Location = New-Object System.Drawing.Point(10, 60)
$form.Controls.Add($textBox)

# Button Label
$buttonLabel = New-Object System.Windows.Forms.Label
$buttonLabel.Text = "2) Button"
$buttonLabel.Location = New-Object System.Drawing.Point(10, 100)
$form.Controls.Add($buttonLabel)
# Button Object
$button = New-Object System.Windows.Forms.Button
$button.Text = "Button"
$button.Location = New-Object System.Drawing.Point(10, 120)
$form.Controls.Add($button)

# CheckBox Label
$checkBoxLabel = New-Object System.Windows.Forms.Label
$checkBoxLabel.Text = "3) CheckBox"
$checkBoxLabel.Location = New-Object System.Drawing.Point(10, 170)
$form.Controls.Add($checkBoxLabel)
# CheckBox object
$checkBox = New-Object System.Windows.Forms.CheckBox
$checkBox.Text = "CheckBox"
$checkBox.Location = New-Object System.Drawing.Point(10, 190)
$form.Controls.Add($checkBox)

# RadioButton Label
$radioButtonLabel = New-Object System.Windows.Forms.Label
$radioButtonLabel.Text = "4) RadioButton"
$radioButtonLabel.Location = New-Object System.Drawing.Point(10, 240)
$form.Controls.Add($radioButtonLabel)
# RadioButton Object
$radioButton = New-Object System.Windows.Forms.RadioButton
$radioButton.Text = "RadioButton"
$radioButton.Location = New-Object System.Drawing.Point(10, 260)
$form.Controls.Add($radioButton)

# Label for ComboBox
$comboBoxLabel = New-Object System.Windows.Forms.Label
$comboBoxLabel.Text = "5) ComboBox"
$comboBoxLabel.Location = New-Object System.Drawing.Point(10, 300)
$form.Controls.Add($comboBoxLabel)
# Create a combo box
$comboBox = New-Object System.Windows.Forms.ComboBox
$comboBox.Items.AddRange(@("Option 1", "Option 2", "Option 3"))
$comboBox.Location = New-Object System.Drawing.Point(10, 320)
$form.Controls.Add($comboBox)

# Label for ListBox
$listBoxLabel = New-Object System.Windows.Forms.Label
$listBoxLabel.Text = "6) ListBox"
$listBoxLabel.Location = New-Object System.Drawing.Point(10, 360)
$form.Controls.Add($listBoxLabel)
# Create a list box
$listBox = New-Object System.Windows.Forms.ListBox
$listBox.Items.AddRange(@("Item 1", "Item 2", "Item 3"))
$listBox.Location = New-Object System.Drawing.Point(10, 380)
$form.Controls.Add($listBox)

# PictureBox Label
$pictureBoxLabel = New-Object System.Windows.Forms.Label
$pictureBoxLabel.Text = "7) PictureBox`nClick To Add Photo"
$pictureBoxLabel.Size = New-Object System.Drawing.Size(200, 30) #needed to allow a longer label
$pictureBoxLabel.Location = New-Object System.Drawing.Point(10, 485)
$form.Controls.Add($pictureBoxLabel)
# Picturebox Object
$pictureBox = New-Object System.Windows.Forms.PictureBox
$pictureBox.Size = New-Object System.Drawing.Size(120, 120)
$pictureBox.Location = New-Object System.Drawing.Point(10, 510)
$pictureBox.SizeMode = [System.Windows.Forms.PictureBoxSizeMode]::StretchImage  # Fit the image to the PictureBox
$pictureBox.BackColor = [System.Drawing.Color]::Gray
$form.Controls.Add($pictureBox)
#File Chooser for PictureBox
$openFileDialog = New-Object System.Windows.Forms.OpenFileDialog
$openFileDialog.Filter = "Image Files (*.jpg; *.png; *.bmp)|*.jpg;*.png;*.bmp"

# Handle the file selection
$pictureBox.Add_Click({
    if ($openFileDialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) {
        $selectedImagePath = $openFileDialog.FileName
        $pictureBox.Image = [System.Drawing.Image]::FromFile($selectedImagePath)
    }
})

#Object Column 2

# Panel Label
$panelLabel = New-Object System.Windows.Forms.Label
$panelLabel.Text = "8) Panel"
$panelLabel.Location = New-Object System.Drawing.Point(150, 40)
$form.Controls.Add($panelLabel)
# Panel Object
$panel = New-Object System.Windows.Forms.Panel
$panel.Size = New-Object System.Drawing.Size(200, 100)
$panel.Location = New-Object System.Drawing.Point(150, 60)
$panel.BackColor = [System.Drawing.Color]::LightBlue
$form.Controls.Add($panel)

# Label for GroupBox
$groupBoxLabel = New-Object System.Windows.Forms.Label
$groupBoxLabel.Text = "9) GroupBox"
$groupBoxLabel.Location = New-Object System.Drawing.Point(150, 180)
$form.Controls.Add($groupBoxLabel)
# GroupBox Object
$groupBox = New-Object System.Windows.Forms.GroupBox
$groupBox.Text = "GroupBox"
$groupBox.Size = New-Object System.Drawing.Size(200, 100)
$groupBox.Location = New-Object System.Drawing.Point(150, 202)
$form.Controls.Add($groupBox)

# TabControl Label
$tabControlLabel = New-Object System.Windows.Forms.Label
$tabControlLabel.Text = "10) TabControl"
$tabControlLabel.Location = New-Object System.Drawing.Point(150, 330)
$form.Controls.Add($tabControlLabel)
# TabControl Object
$tabControl = New-Object System.Windows.Forms.TabControl
$tabControl.Size = New-Object System.Drawing.Size(200, 100)
$tabControl.Location = New-Object System.Drawing.Point(150, 350)
$tabPage1 = New-Object System.Windows.Forms.TabPage
$tabPage1.Text = "Tab 1"
$tabPage2 = New-Object System.Windows.Forms.TabPage
$tabPage2.Text = "Tab 2"
$tabControl.TabPages.Add($tabPage1)
$tabControl.TabPages.Add($tabPage2)
$form.Controls.Add($tabControl)

# ProgressBar Label
$progressBarLabel = New-Object System.Windows.Forms.Label
$progressBarLabel.Text = "11) ProgressBar"
$progressBarLabel.Location = New-Object System.Drawing.Point(150, 470)
$form.Controls.Add($progressBarLabel)
# ProgressBar Object
$progressBar = New-Object System.Windows.Forms.ProgressBar
$progressBar.Value = 50
$progressBar.Location = New-Object System.Drawing.Point(150, 490)
$form.Controls.Add($progressBar)

# TrackBar Label
$trackBarLabel = New-Object System.Windows.Forms.Label
$trackBarLabel.Text = "12) TrackBar"
$trackBarLabel.Location = New-Object System.Drawing.Point(150, 540)
$form.Controls.Add($trackBarLabel)
# TrackBar Object
$trackBar = New-Object System.Windows.Forms.TrackBar
$trackBar.Location = New-Object System.Drawing.Point(150, 560)
$form.Controls.Add($trackBar)

# NumericUpDown Label
$numericUpDownLabel = New-Object System.Windows.Forms.Label
$numericUpDownLabel.Text = "13)NumericUpDown"
$numericUpDownLabel.Size = New-Object System.Drawing.Size(200, 20) #needed to allow a longer label, other labels won't have this
$numericUpDownLabel.Location = New-Object System.Drawing.Point(380, 40)
$form.Controls.Add($numericUpDownLabel)
# NumericUpDown Object
$numericUpDown = New-Object System.Windows.Forms.NumericUpDown
$numericupdown.Size = New-Object System.Drawing.Size(200, 40)
$numericUpDown.Location = New-Object System.Drawing.Point(380, 60)
$form.Controls.Add($numericUpDown)

# Label for TreeView
$treeViewLabel = New-Object System.Windows.Forms.Label
$treeViewLabel.Text = "14) TreeView"
$treeViewLabel.Location = New-Object System.Drawing.Point(380, 100)
$form.Controls.Add($treeViewLabel)
# Create a tree view
$treeView = New-Object System.Windows.Forms.TreeView
$treeView.Nodes.Add("Node 1")
$treeView.Nodes.Add("Node 2")
$treeView.Location = New-Object System.Drawing.Point(380, 120)
$form.Controls.Add($treeView)

# Label for ListView
$listViewLabel = New-Object System.Windows.Forms.Label
$listViewLabel.Text = "15) ListView"
$listViewLabel.Location = New-Object System.Drawing.Point(380, 240)
$form.Controls.Add($listViewLabel)
# Create a list view
$listView = New-Object System.Windows.Forms.ListView
$listView.View = [System.Windows.Forms.View]::Details
$listView.Columns.Add("Column 1")
$listView.Columns.Add("Column 2")
$listView.Items.Add((New-Object System.Windows.Forms.ListViewItem("Item 1")))
$listView.Items.Add((New-Object System.Windows.Forms.ListViewItem("Item 2")))
$listView.Location = New-Object System.Drawing.Point(380, 260)
$form.Controls.Add($listView)

# Label for DataGridView
$dataGridViewLabel = New-Object System.Windows.Forms.Label
$dataGridViewLabel.Text = "16) DataGridView"
$dataGridViewLabel.Location = New-Object System.Drawing.Point(380, 390)
$form.Controls.Add($dataGridViewLabel)
# Create a data grid view
$dataGridView = New-Object System.Windows.Forms.DataGridView
$dataGridView.Size = New-Object System.Drawing.Size(200, 200)
$dataGridView.Location = New-Object System.Drawing.Point(380, 410)
$form.Controls.Add($dataGridView)


# Create a rich text box, No label needed
$richTextBox = New-Object System.Windows.Forms.RichTextBox
$richTextBox.Text = "RichTextBox"
$richTextBox.Size = New-Object System.Drawing.Size(200, 100) #added to customize fit
$richTextBox.Location = New-Object System.Drawing.Point(600, 50)
$form.Controls.Add($richTextBox)

#600x170
# Label for DateTimePicker
$dateTimePickerLabel = New-Object System.Windows.Forms.Label
$dateTimePickerLabel.Text = "DateTimePicker"
$dateTimePickerLabel.Location = New-Object System.Drawing.Point(600, 170)
$form.Controls.Add($dateTimePickerLabel)
# Create a date time picker
$dateTimePicker = New-Object System.Windows.Forms.DateTimePicker
$dateTimePicker.Location = New-Object System.Drawing.Point(600, 190)
$form.Controls.Add($dateTimePicker)

# Create a menu strip
$menuStrip = New-Object System.Windows.Forms.MenuStrip
$fileMenu = New-Object System.Windows.Forms.ToolStripMenuItem("File")
$editMenu = New-Object System.Windows.Forms.ToolStripMenuItem("Customize")
$helpMenu = New-Object System.Windows.Forms.ToolStripMenuItem("Help")
$menuStrip.Items.Add($fileMenu)
$menuStrip.Items.Add($editMenu)
$menuStrip.Items.Add($helpMenu)
$form.MainMenuStrip = $menuStrip
$form.Controls.Add($menuStrip)
# Create a submenu item under "Customize" for changing background color
$changeBgColorMenuItem = New-Object System.Windows.Forms.ToolStripMenuItem("Change Background Color")
$editMenu.DropDownItems.Add($changeBgColorMenuItem)

# Handle the "Change Background Color" menu item click event
$changeBgColorMenuItem.Add_Click({
    $colorDialog = New-Object System.Windows.Forms.ColorDialog
    if ($colorDialog.ShowDialog() -eq [System.Windows.Forms.DialogResult]::OK) {
        $form.BackColor = $colorDialog.Color
    }
})

# Create an "About" menu item under "Help"
$aboutMenuItem = New-Object System.Windows.Forms.ToolStripMenuItem("About")
$helpMenu.DropDownItems.Add($aboutMenuItem)

# Handle the "About" menu item click event
$aboutMenuItem.Add_Click({
    [void][System.Windows.Forms.MessageBox]::Show("Hello, and thank you for using this program. This program was designed by long-time programmer J. L. Caldwell (also known as Timefliesbuy). https://www.youtube.com/@Pad6")
})

# Create a RichTextBox for the custom dialog box
$rtbDialog = New-Object System.Windows.Forms.RichTextBox
$rtbDialog.Size = New-Object System.Drawing.Size(300, 100)
$rtbDialog.Text = "Hello"
$rtbDialog.Text = @"
Hello, and thank you for using this program.
It was designed by long-time programmer, trader, & webdesigner J. L. Caldwell (also known as Timefliesbuy). 
You can see some of his earlier programs at https://www.youtube.com/@Pad6
"@
# Handle the link clicked event
$rtbDialog.Add_LinkClicked({
    [System.Diagnostics.Process]::Start($_.LinkText)
})

# Create a custom dialog box
$dialogBox = New-Object System.Windows.Forms.Form
$dialogBox.Text = "About The Author"
$dialogBox.Size = New-Object System.Drawing.Size(320, 160)
$dialogBox.Controls.Add($rtbDialog)

$aboutMenuItem.Add_Click({
    $dialogBox.ShowDialog()
})###############################################################################################

# Create a status strip
$statusStrip = New-Object System.Windows.Forms.StatusStrip
$statusLabel = New-Object System.Windows.Forms.ToolStripStatusLabel("StatusStrip")
$statusStrip.Items.Add($statusLabel)
$form.Controls.Add($statusStrip)

# Create a label for the live date and time
$timeLabel = New-Object System.Windows.Forms.Label
$timeLabel.Location = New-Object System.Drawing.Point(680, 600)
$timeLabel.Size = New-Object System.Drawing.Size(200, 20)
$form.Controls.Add($timeLabel)

# Timer to update the time label
$timer = New-Object System.Windows.Forms.Timer
$timer.Interval = 1000
$timer.Add_Tick({
    $timeLabel.Text = (Get-Date).ToString("yyyy-MM-dd HH:mm:ss")
})
$timer.Start()

# Show the form
$form.ShowDialog()

# LOC <260
