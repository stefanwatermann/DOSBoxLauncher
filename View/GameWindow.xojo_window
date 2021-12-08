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
   Title           =   "#kGameWindow_Title"
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
      Tooltip         =   "#kResultText_Tooltip"
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
   Begin Label lbDOSBoxManual
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
      Text            =   "#kDOSBoxManual_Text"
      TextAlignment   =   0
      TextColor       =   &c9437FF00
      Tooltip         =   ""
      Top             =   380
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   144
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
      Text            =   "#kLastPlayedTop_Text"
      TextAlignment   =   0
      TextColor       =   &c92929200
      Tooltip         =   ""
      Top             =   380
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   131
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
		  Self.GameWindowToolbar.tbAddGame.Caption = kToolbarGameWindow_AddGame
		  
		  Self.GameWindowToolbar.tbEditGame.SetIcons(icoEdit_black, icoEdit_white)
		  Self.GameWindowToolbar.tbEditGame.Caption = kToolbarGameWindow_EditGame
		  
		  Self.GameWindowToolbar.tbDeleteGame.SetIcons(icoDelete_black, icoDelete_white)
		  Self.GameWindowToolbar.tbDeleteGame.Caption = kToolbarGameWindow_DeleteGame
		  
		  Self.GameWindowToolbar.tbOptions.SetIcons(icoOptions_black, icoOptions_white)
		  Self.GameWindowToolbar.tbOptions.Caption = kToolbarGameWindow_Options
		  
		  Self.GameWindowToolbar.tbRunGame.SetIcons(icoPlay_black, icoPlay_white)
		  Self.GameWindowToolbar.tbRunGame.Caption = kToolbarGameWindow_RunGame
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub CreateShortcut(game as DOSGame)
		  GameShortcut.CreateMacShortcut(game)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DeleteGame(game as DOSGame)
		  Var d As New MessageDialog 
		  d.IconType = MessageDialog.IconTypes.Question
		  d.ActionButton.Caption = kDeleteGame_ConfigOnly
		  d.CancelButton.Visible = True    
		  d.AlternateActionButton.Caption = kDeleteGame_DeleteAll
		  d.AlternateActionButton.Visible = True           
		  d.Message = kDeleteGame_MessageText.Replace("#GAMENAME#", game.Name)
		  d.Explanation = kDeleteGame_Explanation
		  
		  Var b As MessageDialogButton = d.ShowModal 
		  
		  If b = d.ActionButton Or b = d.AlternateActionButton Then
		    
		    If b = d.AlternateActionButton Then
		      // delete game folder
		      Var f As New FolderItem(game.FolderMountAsC, FolderItem.PathModes.Native)
		      If f.Exists And f.IsFolder Then
		        f.MoveToTrash()
		      End
		    End
		    
		    // delete generated DOSBox settings file
		    If Self.GameFilesFolder.Child(game.DOSBoxSettingsFilename).Exists And Not Self.GameFilesFolder.Child(game.DOSBoxSettingsFilename).IsFolder Then
		      Self.GameFilesFolder.Child(game.DOSBoxSettingsFilename).MoveToTrash()
		    End
		    
		    // delete game record in db
		    Var r As DataStore.DataStoreResult = DataStore.Delete(game)
		    
		    If r.Status = DataStore.DataStoreResult.DataStoreResultStatus.failed Then
		      Call MsgBox(r.Message, 16)
		    end
		    
		    // refresh list
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
		    
		    // TODO handle rename of game -> former file rename
		    
		    //If editWindow.OrigGameFileName.Lowercase <> game.Name.Lowercase Then
		    //// game wurde umbenannt, alte config datei löschen
		    //Self.GameFilesFolder.Child(editWindow.OrigGameFileName).Remove
		    //End
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
		  Self.BackgroundColor = Colors.ControlBackground
		  
		  DataStore.Initialize(Self.GameFilesFolder)
		  
		  // TODO remove this if all files are migrated
		  TEMP_MigrateGameSettingsFiles
		  
		  OutputPanelVisible(False)
		  ReadGameFiles
		  GameList.SelectedRowIndex = 0
		  
		  If Not ISDOSBoxAvailable Then
		    //Call MsgBox(kInit_CannotFindDOSBoxExecutable_Message, 16)
		    ShowOptions
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ISDOSBoxAvailable() As Boolean
		  App.Log("App.AppConfig.DOSBoxExecutable = " + App.AppConfig.DOSBoxExecutable)
		  
		  If App.AppConfig.DOSBoxExecutable.Length > 0 Then
		    Var f As New FolderItem(App.AppConfig.DOSBoxExecutable, FolderItem.PathModes.Native)
		    Var b As Boolean = (f <> Nil And f.Exists)
		    
		    If b Then
		      App.Log("DOSBox executable found:  " + f.NativePath)
		    Else
		      App.Log("DOSBox executable NOT found! ")
		    End
		    
		    Return b
		  Else
		    Return False
		  End
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub OutputPanelVisible(visible as Boolean = false)
		  Self.Restore
		  
		  If visible Then
		    GameList.Height = Self.Height - 100
		    ResultText.Visible = True
		  Else
		    GameList.Height = Self.Height - 20
		    ResultText.Visible = false
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReadGameFiles()
		  GameList.RemoveAllRows
		  
		  Var r As DataStore.DataStoreResult = DataStore.Get()
		  
		  For Each game As DosGame In r.Games
		    GameList.AddRow(game.name, Str(game.LastStartDtSqlText))
		    GameList.RowTagAt(GameList.LastAddedRowIndex) = game
		  Next
		  
		  SortGameList
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RunGame(game as DosGame)
		  game.LastStartDt = DateTime.Now
		  
		  SaveGameSettings(game)
		  SaveDOSBoxSettings(game)
		  
		  App.SendStats(_
		  "RunGame: " + game.Name + _
		  "; ExpertMode: " + Str(game.ExpertMode) + _
		  "; FullScreen: " + str(game.Fullscreen))
		  
		  Self.Minimize
		  
		  Self.CurrentGame = game
		  
		  DOSBox.DOSBoxExecutable = App.AppConfig.DOSBoxExecutable
		  DOSBox.RunGame(Self.GameFilesFolder.Child(game.DOSBoxSettingsFilename).NativePath, game.AutoExit)
		  
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
		    data = game.DOSBoxSettingsTextExpert.ReplaceLineEndings(EndOfLine.Native)
		  Else
		    data = game.DOSBoxSettingsText
		  End
		  
		  File.WriteAllText(Self.GameFilesFolder.Child(game.DOSBoxSettingsFilename), data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SaveGameSettings(game as DosGame)
		  Var r As DataStore.DataStoreResult = DataStore.Save(game)
		  
		  If r.Status = DataStore.DataStoreResult.DataStoreResultStatus.failed Then
		    Call MsgBox(r.Message, 16)
		  End
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

	#tag Method, Flags = &h21
		Private Sub TEMP_MigrateGameSettingsFiles()
		  // TODO remove after all files have been mograted
		  
		  // read game files
		  For Each f As FolderItem In Self.GameFilesFolder.Children
		    If f.name.EndsWith(dosgame.kFileSettingsFileExtension) Then
		      App.Log("ReadGameFiles: " + f.Name)
		      
		      Var data As String = File.ReadAllText(f)
		      Var game As dosgame = DOSGame.ParseText(data)
		      
		      If game.ExpertMode Then
		        game.DOSBoxSettingsTextExpert = file.ReadAllText(Self.GameFilesFolder.Child(game.DOSBoxSettingsFilename))
		      End
		      
		      // add game to db
		      Var r As DataStore.DataStoreResult = DataStore.Save(game)
		      
		      If r.Status = DataStore.DataStoreResult.DataStoreResultStatus.failed Then
		        Raise New RuntimeException("Cannot save game to db: " + r.Message)
		      End
		      
		      // delete game file
		      If Self.GameFilesFolder.Child(game.SettingsFilename).Exists And Not Self.GameFilesFolder.Child(game.SettingsFilename).IsFolder Then
		        Self.GameFilesFolder.Child(game.SettingsFilename).MoveToTrash()
		      End
		    End
		  Next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private CurrentGame As DOSGame
	#tag EndProperty

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
		Private GameFilesFolder As FolderItem
	#tag EndComputedProperty


	#tag Constant, Name = kDeleteGame_ConfigOnly, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Configuration only"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Nur Konfiguration"
	#tag EndConstant

	#tag Constant, Name = kDeleteGame_DeleteAll, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Delete all"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Alles l\xC3\xB6schen"
	#tag EndConstant

	#tag Constant, Name = kDeleteGame_Explanation, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"\'Delete all\' removes both configuration files AND game files."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"\'Alles l\xC3\xB6schen\' entfernt die Konfigurationsdateien UND das Spiel selbst."
	#tag EndConstant

	#tag Constant, Name = kDeleteGame_MessageText, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Delete game \xE2\x80\x99#GAMENAME#\xE2\x80\x99\?"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Spiel \xE2\x80\x99#GAMENAME#\xE2\x80\x99 l\xC3\xB6schen\?"
	#tag EndConstant

	#tag Constant, Name = kDOSBoxManual_Text, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"DOSBox Documentation"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"DOSBox Dokumentation"
	#tag EndConstant

	#tag Constant, Name = kGameList_ContextMenu_CreateShortcut, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Create Desktop shortcut"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Desktop Shortcut anlegen"
	#tag EndConstant

	#tag Constant, Name = kGameList_ContextMenu_ShowC, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Open C:\\ folder"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ordner C:\\ \xC3\xB6ffnen"
	#tag EndConstant

	#tag Constant, Name = kGameList_ContextMenu_ShowD, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Open D:\\ folder"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ordner D:\\ \xC3\xB6ffnen"
	#tag EndConstant

	#tag Constant, Name = kGameWindow_Title, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"DOSBox Launcher"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"DOSBox Launcher"
	#tag EndConstant

	#tag Constant, Name = kInit_CannotFindDOSBoxExecutable_Message, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"DOSBox Executable not found. Please install DOSBox app first (www.dosbox.com) and enter path on Options dialog."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"DOSBox Executable konnte nicht gefunden werden. Bitte installieren (www.dosbox.com) und den Pfad unter Optionen eintragen."
	#tag EndConstant

	#tag Constant, Name = kLastPlayedAt, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Last played "
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Zuletzt gespielt "
	#tag EndConstant

	#tag Constant, Name = kLastPlayedTop_Text, Type = String, Dynamic = True, Default = \"zuletzt gespielt oben", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"last played on top"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"zuletzt gespielt oben"
	#tag EndConstant

	#tag Constant, Name = kResultText_Tooltip, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"DOSBox Output"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"DOSBox Ausgabe"
	#tag EndConstant

	#tag Constant, Name = kToolbarGameWindow_AddGame, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Add"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Hinzuf\xC3\xBCgen"
	#tag EndConstant

	#tag Constant, Name = kToolbarGameWindow_DeleteGame, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Delete"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"L\xC3\xB6schen"
	#tag EndConstant

	#tag Constant, Name = kToolbarGameWindow_EditGame, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Edit"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Bearbeiten"
	#tag EndConstant

	#tag Constant, Name = kToolbarGameWindow_Options, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Options"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Optionen"
	#tag EndConstant

	#tag Constant, Name = kToolbarGameWindow_RunGame, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Run"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Starten"
	#tag EndConstant


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
#tag Events lbDOSBoxManual
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  ShowURL(Dosbox.kDOSBoxManualUrl)
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
		    g.DrawText(kLastPlayedAt + game.LastStartDtText, 10, 40)
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
	#tag Event
		Function ConstructContextualMenu(base as MenuItem, x as Integer, y as Integer) As Boolean
		  Var game As DOSGame = Me.RowTagAt(Me.SelectedRowIndex)
		  
		  Var m As MenuItem = New MenuItem(kToolbarGameWindow_RunGame)
		  m.Name = "mnPlay"
		  base.AddMenu(m)
		  
		  base.AddMenu(New MenuItem("-"))
		  
		  m =New MenuItem(kToolbarGameWindow_EditGame)
		  m.Name = "mnEdit"
		  base.AddMenu(m)
		  
		  m =New MenuItem(kGameList_ContextMenu_ShowC)
		  m.Name = "mnShowC"
		  base.AddMenu(m)
		  
		  If game.FolderMountAsD.Length > 0 Then
		    m =New MenuItem(kGameList_ContextMenu_ShowD)
		    m.Name = "mnShowD"
		    base.AddMenu(m)
		  End
		  
		  //m =New MenuItem(kGameList_ContextMenu_CreateShortcut)
		  //m.Name = "mnCreateShortcut"
		  //base.AddMenu(m)
		  
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuAction(hitItem as MenuItem) As Boolean
		  Var game As DOSGame = Me.RowTagAt(Me.SelectedRowIndex)
		  
		  Select Case hitItem.Name
		    
		  Case "mnPlay"
		    RunGame(game)
		    
		  Case "mnEdit"
		    EditGame(game)
		    
		  Case "mnShowC"
		    Var f As New FolderItem(game.FolderMountAsC, FolderItem.PathModes.Native)
		    If f <> Nil And f.Exists And f.IsFolder Then
		      f.Open
		    End
		    
		  Case "mnShowD"
		    Var f As New FolderItem(game.FolderMountAsD, FolderItem.PathModes.Native)
		    If f <> Nil And f.Exists And f.IsFolder Then
		      f.Open
		    End
		    
		  Case "mnCreateShortcut"
		    CreateShortcut(game)
		    
		  End
		End Function
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
