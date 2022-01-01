#tag DesktopWindow
Begin DesktopContainer SimpleConfigContainer
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
   Left            =   0
   LockBottom      =   True
   LockLeft        =   True
   LockRight       =   True
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Tooltip         =   ""
   Top             =   0
   Transparent     =   True
   Visible         =   True
   Width           =   500
   Begin DesktopLabel lbGameName
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#lbGameName_Text"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   232
   End
   Begin DesktopLabel lbMandatory
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "SmallSystem"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   384
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#lbMandatory_Text"
      TextAlignment   =   3
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   20
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin DesktopTextField tbGameName
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   24
      Hint            =   "#tbGameName_Hint"
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   43
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   300
   End
   Begin DesktopLabel lbMountC
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#lbMountC_Text"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   83
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   352
   End
   Begin DesktopTextField tbMountC
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   23
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   106
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   428
   End
   Begin DesktopButton btnSelectFolderC
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
      Italic          =   False
      Left            =   451
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "#btnSelectFolder_Tooltip"
      Top             =   107
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   27
   End
   Begin DesktopLabel lbMountD
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#lbMountD_Text"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   147
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   214
   End
   Begin DesktopCheckBox cbMountAsCDROM
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "#cbMountAsCDROM_Caption"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   243
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   147
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   219
   End
   Begin DesktopTextField tbMountD
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   23
      Hint            =   "optional"
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   170
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   428
   End
   Begin DesktopButton btnSelectFolderD
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
      Italic          =   False
      Left            =   451
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   "btnSelectFolder_Tooltip"
      Top             =   171
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   27
   End
   Begin DesktopLabel lbStartFile
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
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
      Text            =   "#lbStartFile_Text"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   223
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   300
   End
   Begin DesktopTextField tbStartFile
      AllowAutoDeactivate=   True
      AllowFocusRing  =   True
      AllowSpellChecking=   False
      AllowTabs       =   False
      BackgroundColor =   &cFFFFFF00
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      Height          =   23
      Hint            =   ""
      Index           =   -2147483648
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Password        =   False
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   246
      Transparent     =   False
      Underline       =   False
      ValidationMask  =   ""
      Visible         =   True
      Width           =   428
   End
   Begin DesktopButton btnSelectStartFile
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
      Italic          =   False
      Left            =   451
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   247
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   28
   End
   Begin DesktopLabel lbResolution
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   22
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#lbResolution_Text"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   300
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   87
   End
   Begin DesktopLabel lbScaler
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   144
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Scaler"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   300
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   87
   End
   Begin DesktopLabel lbMachine
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   264
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#lbMachine_Text"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   300
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   87
   End
   Begin DesktopLabel lbCpuCyles
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   386
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "CPU Cycles"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   300
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   87
   End
   Begin DesktopPopupMenu popupResolution
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   23
      Index           =   -2147483648
      InitialValue    =   "Standard\n320x240\n640x480\n800x600\n1024x768"
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   322
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   110
   End
   Begin DesktopPopupMenu popupScaler
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   23
      Index           =   -2147483648
      InitialValue    =   "none\nnormal2x\nnormal3x\nadvmame2x\nadvmame3x\nadvinterp2x\nadvinterp3x\nhq2x\nhq3x\n2xsai\nsuper2xsai\nsupereagle\ntv2x\ntv3x\nrgb2x\nrgb3x\nscan2x\nscan3x"
      Italic          =   False
      Left            =   142
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   322
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   110
   End
   Begin DesktopPopupMenu popupMachine
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   23
      Index           =   -2147483648
      InitialValue    =   "hercules\ncga\ntandy\npcjr\nega\nvgaonly\nsvga_s3\nsvga_et3000\nsvga_et4000\nsvga_paradise\nvesa_nolfb\nvesa_oldvbe"
      Italic          =   False
      Left            =   262
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   322
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   110
   End
   Begin DesktopPopupMenu popupCpuCycles
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   23
      Index           =   -2147483648
      InitialValue    =   "auto\n1000\n2000\n3000\n4000\n5000\n6000\n7000\n8000\n9000\nmax"
      Italic          =   False
      Left            =   384
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      SelectedRowIndex=   0
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   322
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   94
   End
   Begin DesktopRadioButton rbScreenWindow
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "#rbScreenWindow_Caption"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   33
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   354
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   110
   End
   Begin DesktopRadioButton rbScreenFull
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "#rbScreenFull_Caption"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   33
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   376
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   94
   End
   Begin DesktopCheckBox cbAutoExit
      AllowAutoDeactivate=   True
      Bold            =   False
      Caption         =   "#cbAutoExit_Caption"
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      Italic          =   False
      Left            =   185
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   376
      Transparent     =   True
      Underline       =   False
      Value           =   False
      Visible         =   True
      VisualState     =   0
      Width           =   293
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  AdjustControls
		  RaiseEvent Opening
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub AdjustControls()
		  #If TargetLinux Then
		    For Each ctrl As DesktopControl In Self.Controls
		      
		      If ctrl IsA DesktopButton Then
		        DesktopButton(ctrl).Height = 29
		      End
		      
		      If ctrl IsA DesktopTextField Then
		        DesktopTextField(ctrl).Height = 29
		      End
		      
		      If ctrl IsA DesktopPopupMenu Then
		        DesktopPopupMenu(ctrl).Height = 29
		      End
		      
		    Next
		  #EndIf
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub EnableOkButton()
		  Var canEnable As Boolean = False
		  
		  canEnable = ((Self.CurrentDOSGame.Name.Length > 2) And _
		  (Self.CurrentDOSGame.StartFile.Length > 2) And _
		  (Self.CurrentDOSGame.FolderMountAsC.Length > 2) And _
		  self.IsDirty)
		  
		  RaiseEvent CanEnableOkButton(canEnable)
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event CanEnableOkButton(enable as Boolean)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Opening()
	#tag EndHook


	#tag Property, Flags = &h0
		CurrentDOSGame As DOSGame
	#tag EndProperty

	#tag Property, Flags = &h0
		GameFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		IsDirty As Boolean = false
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

	#tag Constant, Name = tbGameName_Hint, Type = String, Dynamic = True, Default = \"min. 3 character", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"min. 3 character"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"mindestens 3 Zeichen"
	#tag EndConstant


#tag EndWindowCode

#tag Events tbGameName
	#tag Event
		Sub TextChanged()
		  Self.IsDirty = True
		  Self.CurrentDOSGame.Name = Me.Text
		  EnableOkButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Me.Text = Self.CurrentDOSGame.Name
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbMountC
	#tag Event
		Sub TextChanged()
		  IsDirty = True
		  Self.CurrentDOSGame.FolderMountAsC = Me.Text
		  EnableOkButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Me.Text = Self.CurrentDOSGame.FolderMountAsC
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSelectFolderC
	#tag Event
		Sub Pressed()
		  Var dlg As New SelectFolderDialog
		  dlg.ActionButtonCaption = kSelectC_Action
		  dlg.Title = kSelectC_Title
		  dlg.PromptText = kSelectC_Title
		  dlg.InitialFolder = GameFolder
		  
		  Var f As FolderItem = dlg.ShowModal
		  
		  If f <> Nil Then
		    tbMountC.Text = f.NativePath
		    
		    If tbGameName.Text.Length = 0 Then
		      tbGameName.Text = f.Name
		    End
		  End 
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbMountAsCDROM
	#tag Event
		Sub ValueChanged()
		  Self.IsDirty = True
		  Self.CurrentDOSGame.MountDAsCdrom = Me.Value
		  EnableOkButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.Value = self.CurrentDOSGame.MountDAsCdrom
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbMountD
	#tag Event
		Sub TextChanged()
		  IsDirty = True
		  Self.CurrentDOSGame.FolderMountAsD = Me.Text
		  EnableOkButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.Text = self.CurrentDOSGame.FolderMountAsD
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSelectFolderD
	#tag Event
		Sub Pressed()
		  Var dlg As New SelectFolderDialog
		  dlg.ActionButtonCaption = kSelectD_Title
		  dlg.Title = kSelectD_Title
		  dlg.PromptText = kSelectD_Title
		  dlg.InitialFolder = GameFolder
		  
		  Var f As FolderItem = dlg.ShowModal
		  
		  If f <> Nil Then
		    tbMountD.Text = f.NativePath
		  End 
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbStartFile
	#tag Event
		Sub TextChanged()
		  Self.IsDirty = True
		  Self.CurrentDOSGame.StartFile = Me.Text
		  EnableOkButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Me.Text = Self.CurrentDOSGame.StartFile
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSelectStartFile
	#tag Event
		Sub Pressed()
		  Var useC As Boolean = True
		  
		  If Self.CurrentDOSGame.FolderMountAsD.Length > 0 Then
		    Var d As New MessageDialog 
		    d.IconType = MessageDialog.IconTypes.Question
		    d.ActionButton.Caption = "C:"
		    d.AlternateActionButton.Caption = "D:"
		    d.AlternateActionButton.Visible = True
		    d.CancelButton.Visible = False               
		    d.Message = kSelectStartFile_SelectDrive_Title
		    d.Explanation = kSelectStartFile_SelectDrive_Expl
		    
		    Var result As MessageDialogButton = d.ShowModal
		    
		    useC = result.IsDefault
		  End
		  
		  Var initialFolder As Folderitem
		  
		  If useC Then
		    Self.CurrentDOSGame.StartDrive = "C:"
		    initialFolder = New FolderItem(tbMountC.Text, Folderitem.PathModes.Native)
		  Else
		    Self.CurrentDOSGame.StartDrive = "D:"
		    initialFolder = New FolderItem(tbMountD.Text, Folderitem.PathModes.Native)
		  End
		  
		  Var dlg As New OpenFileDialog
		  dlg.ActionButtonCaption = kSelectStartFile_Action
		  dlg.Title = kSelectStartFile_Title
		  dlg.PromptText = kSelectStartFile_Title
		  dlg.InitialFolder = initialFolder
		  Var f As FolderItem = dlg.ShowModal
		  
		  If f <> Nil Then
		    tbStartFile.Text = f.Name
		  End 
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popupResolution
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  Self.IsDirty = True
		  Self.CurrentDOSGame.Resolution = Me.SelectedRowValue
		  EnableOkButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.SelectRowWithValue(self.CurrentDOSGame.Resolution)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popupScaler
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  IsDirty = True
		  Self.CurrentDOSGame.Scaler = Me.SelectedRowValue
		  EnableOkButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.SelectRowWithValue(self.CurrentDOSGame.Scaler)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popupMachine
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  Self.IsDirty = True
		  Self.CurrentDOSGame.MachineType = Me.SelectedRowValue
		  EnableOkButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.SelectRowWithValue(self.CurrentDOSGame.MachineType)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popupCpuCycles
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  Self.IsDirty = True
		  Self.CurrentDOSGame.CpuCycles = Me.SelectedRowValue
		  EnableOkButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.SelectRowWithValue(self.CurrentDOSGame.CpuCycles)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rbScreenWindow
	#tag Event
		Sub ValueChanged()
		  Self.IsDirty = True
		  Self.CurrentDOSGame.Fullscreen = Not Me.Value
		  EnableOkButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.Value = not self.CurrentDOSGame.Fullscreen
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rbScreenFull
	#tag Event
		Sub ValueChanged()
		  Self.IsDirty = True
		  Self.CurrentDOSGame.Fullscreen = Me.Value
		  EnableOkButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.Value = self.CurrentDOSGame.Fullscreen
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbAutoExit
	#tag Event
		Sub Opening()
		  me.Value = self.CurrentDOSGame.AutoExit
		End Sub
	#tag EndEvent
	#tag Event
		Sub ValueChanged()
		  Self.IsDirty = True
		  Self.CurrentDOSGame.AutoExit = Me.Value
		  EnableOkButton
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
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=true
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Size"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Visible=false
		Group="Position"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Position"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Position"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabPanelIndex"
		Visible=false
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabStop"
		Visible=true
		Group="Position"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowAutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Tooltip"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocusRing"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
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
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Transparent"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composited"
		Visible=true
		Group="Windows Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="IsDirty"
		Visible=false
		Group="Behavior"
		InitialValue="false"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
