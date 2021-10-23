#tag Window
Begin Window GameWindow
   Backdrop        =   0
   BackgroundColor =   &c21212100
   Composite       =   False
   DefaultLocation =   2
   FullScreen      =   False
   HasBackgroundColor=   True
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   True
   HasMinimizeButton=   True
   Height          =   400
   ImplicitInstance=   True
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   922546175
   MenuBarVisible  =   True
   MinimumHeight   =   400
   MinimumWidth    =   420
   Resizeable      =   True
   Title           =   "DOSBox Game Launcher"
   Type            =   0
   Visible         =   True
   Width           =   420
   Begin TextArea ResultText
      AllowAutoDeactivate=   True
      AllowFocusRing  =   False
      AllowSpellChecking=   True
      AllowStyledText =   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "SmallSystem"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   False
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      Height          =   75
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   True
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   "DOSBox Ausgabe"
      Top             =   305
      Transparent     =   True
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   420
   End
   Begin ToolbarGameWindow GameWindowToolbar
      Enabled         =   True
      Index           =   -2147483648
      InitialParent   =   ""
      LockedInPosition=   False
      Scope           =   2
      TabPanelIndex   =   0
      Visible         =   True
   End
   Begin Label lbDOSBoxKeys
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "SmallSystem"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "DOSBox Tastatur Shortcuts"
      TextAlignment   =   0
      TextColor       =   &c9437FF00
      Tooltip         =   ""
      Top             =   380
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   159
   End
   Begin ControlsLib.Switch cbSortByDate
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   False
      Backdrop        =   778876927
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   12
      Index           =   -2147483648
      InitialParent   =   ""
      KnobColor       =   &cEEEEEE00
      Left            =   265
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      On              =   True
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   384
      Transparent     =   True
      Visible         =   True
      Width           =   20
   End
   Begin Label lbLastPlayedTop
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "SmallSystem"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   289
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "zuletzt gespielt oben"
      TextAlignment   =   0
      TextColor       =   &c92929200
      Tooltip         =   ""
      Top             =   380
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   123
   End
   Begin Separator Separator1
      AllowAutoDeactivate=   True
      Enabled         =   True
      Height          =   4
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   298
      Transparent     =   False
      Visible         =   True
      Width           =   405
   End
   Begin Timer Timer250ms
      Enabled         =   True
      Index           =   -2147483648
      LockedInPosition=   False
      Period          =   250
      RunMode         =   2
      Scope           =   2
      TabPanelIndex   =   0
   End
   Begin Listbox GameList
      AllowAutoDeactivate=   True
      AllowAutoHideScrollbars=   True
      AllowExpandableRows=   False
      AllowFocusRing  =   False
      AllowResizableColumns=   True
      AllowRowDragging=   False
      AllowRowReordering=   False
      Bold            =   False
      ColumnCount     =   2
      ColumnWidths    =   "100%,0%"
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      DropIndicatorVisible=   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      GridLinesHorizontalStyle=   0
      GridLinesVerticalStyle=   0
      HasBorder       =   False
      HasHeader       =   False
      HasHorizontalScrollbar=   False
      HasVerticalScrollbar=   True
      HeadingIndex    =   -1
      Height          =   297
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      RequiresSelection=   True
      RowSelectionType=   0
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   420
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  Init
		End Sub
	#tag EndEvent


	#tag MenuHandler
		Function FileAbout() As Boolean Handles FileAbout.Action
			AboutWindow.ShowModal
			Return True
			
		End Function
	#tag EndMenuHandler


	#tag Method, Flags = &h21
		Private Sub AddGame()
		  Var game As DOSGame = New DOSGame
		  
		  Var editWindow As EditGameWindow = New EditGameWindow(game)
		  editWindow.ShowModal()
		  
		  If editWindow.ResultOk Then
		    SaveGameSettings(game)
		  End
		  
		  editWindow = Nil
		  
		  ReadGameFiles
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ConfigureToolbatButtons()
		  Self.GameWindowToolbar.tbAddGame.SetIcons(icoNew_black, icoNew_white)
		  Self.GameWindowToolbar.tbEditGame.SetIcons(icoEdit_black, icoEdit_white)
		  Self.GameWindowToolbar.tbDeleteGame.SetIcons(icoDelete_black, icoDelete_white)
		  Self.GameWindowToolbar.tbOptions.SetIcons(icoOptions_black, icoOptions_white)
		  Self.GameWindowToolbar.tbRunGame.SetIcons(icoPlay_black, icoPlay_white)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DeleteGame(game as DOSGame)
		  Var d As New MessageDialog 
		  d.IconType = MessageDialog.IconTypes.Question
		  d.ActionButton.Caption = "Nur Konfiguration"
		  d.CancelButton.Visible = True    
		  d.AlternateActionButton.Caption = "Alles löschen"
		  d.AlternateActionButton.Visible = True           
		  d.Message = "Spiel '" + game.Name + "' löschen?"
		  d.Explanation = "'Alles löschen' entfernt die Konfigurationsdateien UND das Spiel selbst."
		  
		  Var b As MessageDialogButton = d.ShowModal 
		  
		  If b = d.ActionButton Or b = d.AlternateActionButton Then
		    
		    If b = d.AlternateActionButton Then
		      Var f As New FolderItem(game.FolderMountAsC)
		      If f.Exists And f.IsFolder Then
		        f.MoveTo(SpecialFolder.Trash)
		      End
		    End
		    
		    If Self.GameFilesPath.Child(game.DOSBoxSettingsFilename).Exists Then
		      Self.GameFilesPath.Child(game.DOSBoxSettingsFilename).Remove
		    End
		    
		    If Self.GameFilesPath.Child(game.SettingsFilename).Exists Then
		      Self.GameFilesPath.Child(game.SettingsFilename).Remove
		    End
		    
		    ReadGameFiles
		  End
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub EditGame(game as DOSGame)
		  
		  Var editWindow As EditGameWindow = New EditGameWindow(game)
		  editWindow.ShowModal()
		  
		  If editWindow.ResultOk Then
		    SaveGameSettings(game)
		    
		    If editWindow.OrigGameFileName.Lowercase <> game.Name.Lowercase Then
		      // game wurde umbenannt, alte config datei löschen
		      Self.GameFilesPath.Child(editWindow.OrigGameFileName).Remove
		    End
		  End
		  
		  editWindow = nil
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub HandleToolbarButton(item as ToolItem)
		  
		  Select Case item.Name
		    
		  Case "tbOptions"
		    ShowOptions
		    
		  Case "tbRunGame"
		    RunGame(GameList.RowTagAt(GameList.SelectedRowIndex))
		    
		  Case "tbAddGame"
		    AddGame
		    
		  Case "tbEditGame"
		    EditGame(GameList.RowTagAt(GameList.SelectedRowIndex))
		    
		  Case "tbDeleteGame"
		    DeleteGame(GameList.RowTagAt(GameList.SelectedRowIndex))
		    
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Init()
		  Self.Title = Self.Title + " (v" + app.LongVersion + ")"
		  Self.BackgroundColor = Colors.ControlBackground
		  
		  OutputPanelVisible(false)
		  ReadGameFiles
		  GameList.SelectedRowIndex = 0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub OutputPanelVisible(visible as Boolean = false)
		  If visible Then
		    GameList.Height = Self.Height - 100
		    ResultText.Top = 305
		  Else
		    GameList.Height = Self.Height - 20
		    ResultText.top = self.Height
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReadGameFiles()
		  
		  GameList.RemoveAllRows
		  
		  For Each f As FolderItem In Self.GameFilesPath.Children
		    If f.name.EndsWith(dosgame.kFileSettingsFileExtension) Then
		      System.DebugLog("ReadGameFiles: " + f.Name)
		      
		      Var data As String = File.ReadAllText(f)
		      Var game As dosgame = DOSGame.ParseText(data)
		      
		      If game.ExpertMode Then
		        game.DOSBoxSettingsTextExpert = file.ReadAllText(Self.GameFilesPath.Child(game.DOSBoxSettingsFilename))
		      End
		      
		      GameList.AddRow(game.name, Str(game.LastStartDtSqlText))
		      GameList.RowTagAt(GameList.LastAddedRowIndex) = game
		    End
		  Next
		  
		  SortGameList
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunGame(game as DosGame)
		  game.LastStartDt = DateTime.Now
		  
		  SaveGameSettings(game)
		  SaveDOSBoxSettings(game)
		  
		  App.SendStats("RunGame: " + game.Name)
		  
		  Self.Minimize
		  
		  DOSBox.DOSBoxExecutable = App.AppConfig.DOSBoxExecutable
		  DOSBox.RunGame(Self.GameFilesPath.Child(game.DOSBoxSettingsFilename).NativePath, game.AutoExit)
		  
		  ResultText.Text = DOSBox.Result
		  ResultText.VerticalScrollPosition = ResultText.LineNumber(ResultText.Text.length)
		  
		  OutputPanelVisible(dosbox.ExitCode <> 0)
		  
		  Self.Show
		  
		  ReadGameFiles
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SaveDOSBoxSettings(game as DosGame)
		  Var data As String
		  
		  If game.ExpertMode Then
		    data = game.DOSBoxSettingsTextExpert
		  Else
		    data = game.DOSBoxSettingsText
		  End
		  
		  File.WriteAllText(Self.GameFilesPath.Child(game.DOSBoxSettingsFilename), data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SaveGameSettings(game as DosGame)
		  File.WriteAllText(Self.GameFilesPath.Child(game.SettingsFilename), game.SettingsText)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ShowOptions()
		  Var dlg As New OptionsWindow()
		  dlg.ShowModal
		  
		  If dlg.ResultOk Then
		    App.AppConfig.Save
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SortGameList()
		  
		  If cbSortByDate.On Then
		    GameList.SortingColumn = 1
		    GameList.ColumnSortDirectionAt(1) = ListBox.SortDirections.Descending
		  Else
		    GameList.SortingColumn = 0
		    GameList.ColumnSortDirectionAt(0) = ListBox.SortDirections.Ascending
		  End
		  
		  GameList.Sort
		  Gamelist.Invalidate
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  Var f As FolderItem = SpecialFolder.ApplicationData.Child("DOSBoxLauncher")
			  
			  If Not f.Exists Then
			    f.CreateFolder
			  End
			  
			  Return f
			End Get
		#tag EndGetter
		Private GameFilesPath As FolderItem
	#tag EndComputedProperty


#tag EndWindowCode

#tag Events ResultText
	#tag Event
		Sub Open()
		  me.TextColor = Colors.TextForegroundDisabled
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GameWindowToolbar
	#tag Event
		Sub Action(item As ToolItem)
		  HandleToolbarButton(item)
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  LinuxHelper.FixLargeToolbarButtons(Me)
		  ConfigureToolbatButtons
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lbDOSBoxKeys
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  ShowURL("https://www.dosbox.com/wiki/Special_Keys")
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  me.MouseCursor = system.Cursors.FingerPointer
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  me.MouseCursor = system.Cursors.StandardPointer
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbSortByDate
	#tag Event , Description = 526169736564207768656E207374617465206F66207468652073776974636820686173206368616E6765642E
		Sub Action()
		  SortGameList
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Timer250ms
	#tag Event
		Sub Action()
		  Var enabled As Boolean = GameList.SelectedRowIndex >= 0
		  GameWindowToolbar.tbRunGame.Enabled = enabled
		  GameWindowToolbar.tbDeleteGame.Enabled = enabled
		  GameWindowToolbar.tbEditGame.Enabled = enabled
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GameList
	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  If column = 0 Then
		    Var game As dosgame = GameList.RowTagAt(row)
		    
		    If Me.Selected(row) Then
		      g.DrawingColor = colors.TextForegroundSelected
		    Else
		      g.DrawingColor = colors.TextForeground
		    End
		    
		    g.FontSize = 16
		    g.DrawText(game.Name, 10, 22)
		    
		    g.FontSize = 11
		    g.DrawText("Zuletzt gespielt " + game.LastStartDtText, 10, 40)
		  End
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  If row Mod 2 = 0 Then
		    g.DrawingColor= Colors.ListRow
		  Else
		    g.DrawingColor= colors.ListRowAlternative
		  End If
		  
		  g.FillRectangle(0, 0, g.Width, g.Height)
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.DefaultRowHeight = 50
		End Sub
	#tag EndEvent
	#tag Event
		Sub DoubleClick()
		  RunGame(me.RowTagAt(me.SelectedRowIndex))
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Frame"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=false
		Group="OS X (Carbon)"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Background"
		InitialValue=""
		Type="Picture"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Menus"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=true
		Group="Deprecated"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior