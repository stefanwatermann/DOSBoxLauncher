#tag DesktopWindow
Begin DesktopWindow EditGameWindow
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   3
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   False
   Height          =   510
   ImplicitInstance=   False
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   498
   MinimumWidth    =   538
   Resizeable      =   True
   Title           =   "#kEditGameWindow_Title"
   Type            =   8
   Visible         =   False
   Width           =   538
   Begin SimpleConfigContainer SimpleConfigContainer1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF
      Composited      =   False
      Enabled         =   True
      HasBackgroundColor=   False
      Height          =   415
      Index           =   -2147483648
      InitialParent   =   ""
      IsDirty         =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   45
      Transparent     =   True
      Visible         =   True
      Width           =   500
   End
   Begin ExpertConfigContainer ExpertConfigContainer1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF
      Composited      =   False
      Enabled         =   True
      HasBackgroundColor=   False
      Height          =   415
      Index           =   -2147483648
      InitialParent   =   ""
      IsDirty         =   False
      Left            =   550
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   45
      Transparent     =   True
      Visible         =   True
      Width           =   500
   End
   Begin TabHeaderContainer TabHeaderContainer1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF
      Composited      =   False
      Enabled         =   True
      HasBackgroundColor=   False
      Height          =   40
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   31
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   7
      Transparent     =   True
      Visible         =   True
      Width           =   498
   End
   Begin OkCancelContainer OkCancelContainer1
      AllowAutoDeactivate=   True
      AllowFocus      =   False
      AllowFocusRing  =   False
      AllowTabs       =   True
      Backdrop        =   0
      BackgroundColor =   &cFFFFFF
      Composited      =   False
      Enabled         =   True
      HasBackgroundColor=   False
      Height          =   40
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      Scope           =   2
      TabIndex        =   32
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   465
      Transparent     =   True
      Visible         =   True
      Width           =   498
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  
		  ExpertConfigContainer1.Left = SimpleConfigContainer1.Left
		  ExpertConfigContainer1.Top = SimpleConfigContainer1.Top
		  ExpertConfigContainer1.Width = SimpleConfigContainer1.Width
		  ExpertConfigContainer1.Height = SimpleConfigContainer1.Height
		  ExpertConfigContainer1.Visible = Not SimpleConfigContainer1.Visible
		  
		  If CurrentDOSGame.ExpertMode Then
		    TabHeaderContainer1.PanelIndex = 1
		  Else
		    TabHeaderContainer1.PanelIndex = 0
		  End
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function CanClose() As Boolean
		  Return True
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(game as DOSGame)
		  Self.CurrentDOSGame = game
		  
		  SimpleConfigContainer1.CurrentDOSGame = game
		  ExpertConfigContainer1.CurrentDOSGame = game
		  
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub EnableOkButton()
		  //If tabEditMode.SelectedPanelIndex = 1 Then
		  //btnOk.Enabled = (tbGameNameExpert.Text.Length > 2) And _
		  //(tbExpertText.Text.Length > 0)
		  //Else
		  //btnOk.Enabled = (tbGameName.Text.Length > 2) And _
		  //(tbStartFile.Text.Length > 2) And _
		  //(tbMountC.Text.Length > 2)
		  //End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetGameFolder() As FolderItem
		  Var f As New FolderItem(App.AppConfig.DOSGamesRootFolder, FolderItem.PathModes.Native)
		  
		  If f.Exists And f.IsFolder Then
		    Return f
		  Else
		    Return SpecialFolder.UserHome
		  end
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		CurrentDOSGame As DOSGame
	#tag EndProperty

	#tag Property, Flags = &h0
		ResultOk As Boolean = false
	#tag EndProperty


	#tag Constant, Name = btnSelectFolder_Tooltip, Type = String, Dynamic = True, Default = \"Select folder\xE2\x80\xA6", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Select folder\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Verzeichnis w\xC3\xA4hlen\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = btnShowDosBoxWiki_Tooltip, Type = String, Dynamic = True, Default = \"Open DOSBox wiki on the internet.", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Open DOSBox wiki on the internet."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"DOSBox Wiki im Internet aufrufen"
	#tag EndConstant

	#tag Constant, Name = cbAutoExit_Caption, Type = String, Dynamic = True, Default = \"Close DOSBox window automatically", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Close DOSBox window automatically"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"DOSBox Fenster automatisch schlie\xC3\x9Fen"
	#tag EndConstant

	#tag Constant, Name = cbMountAsCDROM_Caption, Type = String, Dynamic = True, Default = \"mount as CDROM", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"mount as CDROM"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"als CD-ROM einbinden"
	#tag EndConstant

	#tag Constant, Name = kEditGameWindow_Title, Type = String, Dynamic = True, Default = \"DOSBox configuration", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"DOSBox configuration"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"DOSBox Konfiguration"
	#tag EndConstant

	#tag Constant, Name = kOkUseExpert, Type = String, Dynamic = True, Default = \"Click OK to use the expert configuration and disable the simple config.", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Click OK to use the expert configuration and disable the simple config."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mit OK wird f\xC3\xBCr dieses Spiel die manuelle (Experte) Konfiguration verwendet und die einfache deaktiviert."
	#tag EndConstant

	#tag Constant, Name = kOkUseSimple, Type = String, Dynamic = True, Default = \"Click OK to use the simple configuration and disable the expert config.", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Click OK to use the simple configuration and disable the expert config."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mit OK wird f\xC3\xBCr dieses Spiel die einfache Konfiguration verwendet und die manuelle (Experte) verworfen."
	#tag EndConstant

	#tag Constant, Name = kSelectC_Action, Type = String, Dynamic = True, Default = \"Use", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Use"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Verwenden"
	#tag EndConstant

	#tag Constant, Name = kSelectC_Title, Type = String, Dynamic = True, Default = \"Mount C:\\ - select folder", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Mount C:\\ - select folder"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Verzeichnis als C:\\ w\xC3\xA4hlen"
	#tag EndConstant

	#tag Constant, Name = kSelectD_Title, Type = String, Dynamic = True, Default = \"Mount D:\\ - select folder", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Mount D:\\ - select folder"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mount D:\\ - Verzeichnis w\xC3\xA4hlen"
	#tag EndConstant

	#tag Constant, Name = kSelectStartFile_Action, Type = String, Dynamic = True, Default = \"Use", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Use"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Verwenden"
	#tag EndConstant

	#tag Constant, Name = kSelectStartFile_SelectDrive_Expl, Type = String, Dynamic = True, Default = \"Select drive containing the start-file.", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Select drive containing the start-file."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"W\xC3\xA4hle das Laufwerk welches die Startdatei enth\xC3\xA4lt."
	#tag EndConstant

	#tag Constant, Name = kSelectStartFile_SelectDrive_Title, Type = String, Dynamic = True, Default = \"Select start drive", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Select start drive"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Startlaufwerk ausw\xC3\xA4hlen"
	#tag EndConstant

	#tag Constant, Name = kSelectStartFile_Title, Type = String, Dynamic = True, Default = \"Select start-file", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Select start-file"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Startdatei w\xC3\xA4hlen"
	#tag EndConstant

	#tag Constant, Name = lbExpertTitle_Text, Type = String, Dynamic = True, Default = \"Edit config-file manually.", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Edit config-file manually."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Konfigurationsdatei manuell bearbeiten."
	#tag EndConstant

	#tag Constant, Name = lbGameName_Text, Type = String, Dynamic = True, Default = \"Name of game *", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Name of game *"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Name des Spiels *"
	#tag EndConstant

	#tag Constant, Name = lbMachine_Text, Type = String, Dynamic = True, Default = \"Machine", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Machine"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Maschine"
	#tag EndConstant

	#tag Constant, Name = lbMandatory_Text, Type = String, Dynamic = True, Default = \"* Mandatory", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"* Mandatory"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"* Pflichtfeld"
	#tag EndConstant

	#tag Constant, Name = lbMountC_Text, Type = String, Dynamic = True, Default = \"Folder to mount as C:\\ *", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Folder to mount as C:\\ *"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Verzeichnis als C:\\ einbinden *"
	#tag EndConstant

	#tag Constant, Name = lbMountD_Text, Type = String, Dynamic = True, Default = \"Folder to mount as D:\\", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Folder to mount as D:\\"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Verzeichnis als D:\\ einbinden"
	#tag EndConstant

	#tag Constant, Name = lbResolution_Text, Type = String, Dynamic = True, Default = \"Resolution", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Resolution"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Aufl\xC3\xB6sung"
	#tag EndConstant

	#tag Constant, Name = lbStartFile_Text, Type = String, Dynamic = True, Default = \"Start executable *", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Start executable *"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Start Datei *"
	#tag EndConstant

	#tag Constant, Name = rbScreenFull_Caption, Type = String, Dynamic = True, Default = \"Fullscreen", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Fullscreen"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Vollbild"
	#tag EndConstant

	#tag Constant, Name = rbScreenWindow_Caption, Type = String, Dynamic = True, Default = \"Windowed", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Windowed"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Fenster"
	#tag EndConstant

	#tag Constant, Name = tbGameNameExpert_Hint, Type = String, Dynamic = True, Default = \"Name of game (min. 3 char.)", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Name of game (min. 3 char.)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Spielname (min. 3 Zeichen)"
	#tag EndConstant

	#tag Constant, Name = tbGameNameExpert_Tooltip, Type = String, Dynamic = True, Default = \"Name of game\x2C at least 3 characters.", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Name of game\x2C at least 3 characters."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Name des Spiels\x2C mindestens 3 Zeichen."
	#tag EndConstant

	#tag Constant, Name = tbGameName_Hint, Type = String, Dynamic = True, Default = \"min. 3 character", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"min. 3 character"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"mindestens 3 Zeichen"
	#tag EndConstant


#tag EndWindowCode

#tag Events SimpleConfigContainer1
	#tag Event
		Sub CanEnableOkButton(enable as Boolean)
		  System.DebugLog(Str(enable))
		  OkCancelContainer1.OkEnabled = enable
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.CurrentDOSGame = self.CurrentDOSGame
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ExpertConfigContainer1
	#tag Event
		Sub CanEnableOkButton(enable as Boolean)
		  OkCancelContainer1.OkEnabled = enable
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.CurrentDOSGame = self.CurrentDOSGame
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TabHeaderContainer1
	#tag Event
		Sub TabChanged(index as integer)
		  SimpleConfigContainer1.Visible = index = 0
		  ExpertConfigContainer1.Visible = index <> 0
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events OkCancelContainer1
	#tag Event
		Sub OkPressed()
		  If TabHeaderContainer1.PanelIndex = 0 Then
		    If Self.CurrentDOSGame.ExpertMode Then
		      Var r As Integer
		      r = MsgBox(kOkUseSimple, 33)
		      If r = 1 Then
		        Self.CurrentDOSGame.ExpertMode = False
		      Else
		        Return
		      End
		    End
		  Else
		    If Not Self.CurrentDOSGame.ExpertMode Then
		      Var r As Integer
		      r = MsgBox(kOkUseExpert, 33)
		      If r = 1 Then
		        Self.CurrentDOSGame.ExpertMode = True
		      Else
		        Return
		      End
		    End
		  End
		  
		  If Self.CurrentDOSGame.ExpertMode Then
		    Break
		    // TODO Self.CurrentDOSGame.DOSBoxSettingsTextExpert = tbExpertText.Text
		  Else
		    Self.CurrentDOSGame.DOSBoxSettingsTextExpert = ""
		  End
		  
		  Self.ResultOk = True
		  Self.Close
		End Sub
	#tag EndEvent
	#tag Event
		Sub CancelPressed()
		  If Self.CanClose Then
		    Self.ResultOk = False
		    Self.Close
		  end
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
		Type="ColorGroup"
		EditorType="ColorGroup"
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
		Type="DesktopMenuBar"
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
	#tag ViewProperty
		Name="ResultOk"
		Visible=false
		Group="Behavior"
		InitialValue="false"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
