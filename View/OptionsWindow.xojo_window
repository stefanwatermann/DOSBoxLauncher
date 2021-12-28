#tag DesktopWindow
Begin DesktopWindow OptionsWindow
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
   Height          =   346
   ImplicitInstance=   False
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   False
   Title           =   "#kOptionsWindow_Title"
   Type            =   8
   Visible         =   True
   Width           =   460
   Begin PushButton btnOk
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "OK"
      Default         =   True
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   134
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   306
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton btnCancel
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "#kbtnCancel_Caption"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   226
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   306
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin TextField tbGameFolder
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   40
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   141
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   350
   End
   Begin PushButton btnSelectGameFolder
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "..."
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   395
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "#kbtnSelectGameFolder_Tooltip"
      Top             =   142
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   27
   End
   Begin Label Label2
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   40
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#kLabel2_Text"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   180
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   202
   End
   Begin TextField tbDOSBoxExecutable
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   22
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   40
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   202
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   350
   End
   Begin PushButton btnSelectDOSBox
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "..."
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   395
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "#kbtnSelectDOSBox_Tooltip"
      Top             =   203
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   27
   End
   Begin CheckBox cbSendStats
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "#kcbSendStats_Caption"
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   40
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   249
      Transparent     =   False
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   350
   End
   Begin Label lbDescription
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   97
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   40
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#klbDescription_Text"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   25
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   382
   End
   Begin Label Label1
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   40
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#kLabel1_Text"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   118
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   350
   End
   Begin Label lbDOSBoxInternet
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
      Left            =   254
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#lbDOSBoxInternet_Text"
      TextAlignment   =   3
      TextColor       =   &c9437FF00
      Tooltip         =   ""
      Top             =   181
      Transparent     =   False
      Underline       =   True
      Visible         =   True
      Width           =   136
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Property, Flags = &h0
		ResultOk As Boolean = false
	#tag EndProperty


	#tag Constant, Name = kbtnCancel_Caption, Type = String, Dynamic = True, Default = \"Cancel", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Cancel"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Abbrechen"
	#tag EndConstant

	#tag Constant, Name = kbtnSelectDOSBox_Tooltip, Type = String, Dynamic = True, Default = \"Select file\xE2\x80\xA6", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Select file\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Datei w\xC3\xA4hlen..."
	#tag EndConstant

	#tag Constant, Name = kbtnSelectGameFolder_Tooltip, Type = String, Dynamic = True, Default = \"Select Folder...", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Select Folder..."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Verzeichnis w\xC3\xA4hlen\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = kcbSendStats_Caption, Type = String, Dynamic = True, Default = \"Send anonymized usage statistics", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Send anonymized usage statistics"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Anonymisierte Nutzungsdaten senden"
	#tag EndConstant

	#tag Constant, Name = kLabel1_Text, Type = String, Dynamic = True, Default = \"Base folder for DOS games/apps", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Base folder for DOS games/apps"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Basisverzeichnis f\xC3\xBCr DOS Spiele/Anwendungen"
	#tag EndConstant

	#tag Constant, Name = kLabel2_Text, Type = String, Dynamic = True, Default = \"DOSBox Executable", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"DOSBox Executable"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"DOSBox Datei"
	#tag EndConstant

	#tag Constant, Name = klbDescription_Text, Type = String, Dynamic = True, Default = \"Set-up the base (or home) folder where DOSBox Launcher will find your DOS games/apps. Furthermore you need to specify the DOSBox executable to be used to launch DOS apps.", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Set-up the base (or home) folder where DOSBox Launcher will find your DOS games/apps. Furthermore you need to specify the DOSBox executable to be used to launch DOS apps."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Lege hier das Basis- (oder Home-) Verzeichnis fest\x2C in welchem DOSBox Launcher deine DOS Anwendungen findet. Weiterhin gibst du die ausf\xC3\xBChrbare DOSBox Datei zum Start deiner DOS Anwendungen an."
	#tag EndConstant

	#tag Constant, Name = kOptionsWindow_Title, Type = String, Dynamic = True, Default = \"Options", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Options"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Optionen"
	#tag EndConstant

	#tag Constant, Name = kSelectDOSBox_Action, Type = String, Dynamic = True, Default = \"Use", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Use"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Verwenden"
	#tag EndConstant

	#tag Constant, Name = kSelectDOSBox_Prompt, Type = String, Dynamic = True, Default = \"Select DOSBox app file", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Select DOSBox app file"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"DOSBox Datei w\xC3\xA4hlen"
	#tag EndConstant

	#tag Constant, Name = kSelectDOSBox_Title, Type = String, Dynamic = True, Default = \"Select DOSBox app file", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Select DOSBox app file"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"DOSBox Datei w\xC3\xA4hlen"
	#tag EndConstant

	#tag Constant, Name = kSelectGameFolder_Action, Type = String, Dynamic = True, Default = \"Use", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Use"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Verwenden"
	#tag EndConstant

	#tag Constant, Name = kSelectGameFolder_Prompt, Type = String, Dynamic = True, Default = \"Select game base folder", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Select game base folder"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Basis-Verzeichnis w\xC3\xA4hlen"
	#tag EndConstant

	#tag Constant, Name = kSelectGameFolder_Title, Type = String, Dynamic = True, Default = \"Select game base folder", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Select game base folder"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Basis-Verzeichnis w\xC3\xA4hlen"
	#tag EndConstant

	#tag Constant, Name = lbDOSBoxInternet_Text, Type = String, Dynamic = True, Default = \"DOSBox on the Internet", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"DOSBox on the Internet"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"DOSBox im Internet"
	#tag EndConstant


#tag EndWindowCode

#tag Events btnOk
	#tag Event
		Sub Action()
		  self.ResultOk = true
		  Self.close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  self.ResultOk = false
		  Self.close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbGameFolder
	#tag Event
		Sub TextChange()
		  App.AppConfig.DOSGamesRootFolder = Me.Text
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Text = App.AppConfig.DOSGamesRootFolder
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSelectGameFolder
	#tag Event
		Sub Action()
		  Var dlg As New SelectFolderDialog
		  dlg.ActionButtonCaption = kSelectGameFolder_Action
		  dlg.Title = kSelectGameFolder_Title
		  dlg.PromptText = kSelectGameFolder_Prompt
		  
		  dlg.InitialFolder = SpecialFolder.UserHome
		  
		  Var f As FolderItem = dlg.ShowModal
		  
		  If f <> Nil Then
		    tbGameFolder.Text = f.NativePath
		  End 
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbDOSBoxExecutable
	#tag Event
		Sub TextChange()
		  App.AppConfig.DOSBoxExecutable = me.Text
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Text = App.AppConfig.DOSBoxExecutable
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSelectDOSBox
	#tag Event
		Sub Action()
		  Var dlg As New OpenFileDialog
		  dlg.ActionButtonCaption = kSelectDOSBox_Action
		  dlg.Title = kSelectDOSBox_Title
		  dlg.PromptText = kSelectDOSBox_Prompt
		  dlg.InitialFolder = SpecialFolder.Applications
		  
		  Var f As FolderItem = dlg.ShowModal
		  
		  If f <> Nil Then
		    tbDOSBoxExecutable.Text = f.NativePath
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbSendStats
	#tag Event
		Sub Action()
		  app.AppConfig.SendStats = me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = app.AppConfig.SendStats
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lbDOSBoxInternet
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  ShowURL(kDOSBoxInternetUrl)
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  me.MouseCursor = System.Cursors.StandardPointer
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  me.MouseCursor = system.Cursors.FingerPointer
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
	#tag ViewProperty
		Name="ResultOk"
		Visible=false
		Group="Behavior"
		InitialValue="false"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
