#tag DesktopWindow
Begin DesktopWindow EditGameWindow
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   0
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   False
   Height          =   498
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
   Begin DesktopButton btnCancel
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
      Left            =   265
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   465
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin DesktopButton btnOk
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "OK"
      Default         =   True
      Enabled         =   False
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   173
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
      Top             =   465
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin DesktopTabPanel tabEditMode
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   435
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   "#tabEditMode_Panels"
      Scope           =   2
      SmallTabs       =   False
      TabDefinition   =   "#ktabEditMode_PanelSimple\r#ktabEditMode_PanelExpert"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   20
      Transparent     =   False
      Underline       =   False
      Value           =   0
      Visible         =   True
      Width           =   500
      Begin DesktopLabel lbStartFile
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "tabEditMode"
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
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "#lbStartFile_Text"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   261
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   300
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
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   164
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   14
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "Scaler"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   338
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
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "tabEditMode"
         InitialValue    =   "Standard\n320x240\n640x480\n800x600\n1024x768"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   17
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   360
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   110
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
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   42
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   13
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "#lbResolution_Text"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   338
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   87
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
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   53
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   21
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   392
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   110
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
         Height          =   22
         Hint            =   "#tbGameName_Hint"
         Index           =   -2147483648
         InitialParent   =   "tabEditMode"
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
         TabIndex        =   2
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   81
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   300
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
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   53
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   22
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   414
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   94
      End
      Begin DesktopLabel lbGameName
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "tabEditMode"
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
         TabIndex        =   0
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "#lbGameName_Text"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   58
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   232
      End
      Begin DesktopPopupMenu popupCpuCycles
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "tabEditMode"
         InitialValue    =   "auto\n1000\n2000\n3000\n4000\n5000\n6000\n7000\n8000\n9000\nmax"
         Italic          =   False
         Left            =   404
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   20
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   360
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   94
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
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   406
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   16
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "CPU Cycles"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   338
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   87
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
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   400
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "#lbMandatory_Text"
         TextAlignment   =   3
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   58
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   100
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
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   471
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   12
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   285
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   28
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
         Height          =   22
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   40
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
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   284
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
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   471
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   9
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   "btnSelectFolder_Tooltip"
         Top             =   209
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   27
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
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   471
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   "#btnSelectFolder_Tooltip"
         Top             =   145
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   27
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
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   263
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   7
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   185
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
         Height          =   22
         Hint            =   "optional"
         Index           =   -2147483648
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   40
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
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   208
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   428
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
         InitialParent   =   "tabEditMode"
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
         TabIndex        =   6
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "#lbMountD_Text"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   185
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   214
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
         Height          =   22
         Hint            =   ""
         Index           =   -2147483648
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   40
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
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   144
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   428
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
         InitialParent   =   "tabEditMode"
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
         TabIndex        =   3
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "#lbMountC_Text"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   121
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   352
      End
      Begin DesktopPopupMenu popupMachine
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "tabEditMode"
         InitialValue    =   "hercules\ncga\ntandy\npcjr\nega\nvgaonly\nsvga_s3\nsvga_et3000\nsvga_et4000\nsvga_paradise\nvesa_nolfb\nvesa_oldvbe"
         Italic          =   False
         Left            =   282
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   19
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   360
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   110
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
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   284
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   15
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   "#lbMachine_Text"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   338
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   87
      End
      Begin DesktopLabel lbExpertTitle
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "SmallSystem"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   22
         Index           =   -2147483648
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   246
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "#lbExpertTitle_Text"
         TextAlignment   =   3
         TextColor       =   &c79797900
         Tooltip         =   ""
         Top             =   64
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   233
      End
      Begin DesktopTextField tbGameNameExpert
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
         Height          =   22
         Hint            =   "#tbGameNameExpert_Hint"
         Index           =   -2147483648
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   40
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   0
         Password        =   False
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   "#tbGameNameExpert_Tooltip"
         Top             =   64
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   204
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
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   205
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         TabIndex        =   23
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   414
         Transparent     =   True
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   0
         Width           =   293
      End
      Begin DesktopPopupMenu popupScaler
         AllowAutoDeactivate=   True
         Bold            =   False
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "tabEditMode"
         InitialValue    =   "none\nnormal2x\nnormal3x\nadvmame2x\nadvmame3x\nadvinterp2x\nadvinterp3x\nhq2x\nhq3x\n2xsai\nsuper2xsai\nsupereagle\ntv2x\ntv3x\nrgb2x\nrgb3x\nscan2x\nscan3x"
         Italic          =   False
         Left            =   162
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   2
         SelectedRowIndex=   0
         TabIndex        =   18
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   360
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   110
      End
      Begin CustomEditFieldContainer tbExpertText
         AllowAutoDeactivate=   True
         AllowFocus      =   False
         AllowFocusRing  =   False
         AllowTabs       =   True
         Backdrop        =   0
         BackgroundColor =   &cFFFFFF00
         Composited      =   False
         Enabled         =   True
         HasBackgroundColor=   False
         Height          =   353
         Index           =   -2147483648
         InitialParent   =   "tabEditMode"
         Left            =   20
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         Tooltip         =   ""
         Top             =   100
         Transparent     =   False
         Visible         =   True
         Width           =   500
      End
      Begin DesktopLabel Label1
         AllowAutoDeactivate=   True
         Bold            =   True
         Enabled         =   True
         FontName        =   "System"
         FontSize        =   0.0
         FontUnit        =   0
         Height          =   20
         Index           =   -2147483648
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   490
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   False
         LockRight       =   True
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   4
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "?"
         TextAlignment   =   2
         TextColor       =   &c9437FF00
         Tooltip         =   ""
         Top             =   66
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   20
      End
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  If CurrentDOSGame.ExpertMode Then
		    tabEditMode.SelectedPanelIndex = 1
		  Else
		    tabEditMode.SelectedPanelIndex = 0
		  End
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function CanClose() As Boolean
		  //If Self.IsDirty And btnOk.Enabled Then
		  //
		  //Var d As New MessageDialog 
		  //d.IconType = MessageDialog.IconTypes.Caution
		  //d.ActionButton.Caption = "OK"
		  //d.CancelButton.Visible = True               
		  //d.Message = "Änderungen verwerfen?"
		  //d.Explanation = "OK klicken, um Änderungen zu verwerfen."
		  //
		  //Var b As MessageDialogButton = d.ShowModal 
		  //Return b.IsDefault
		  //
		  //Else
		  Return True
		  //End
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(game as DOSGame)
		  Self.CurrentDOSGame = game
		  self.OrigGameFileName = game.SettingsFilename
		  
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub EnableOkButton()
		  If tabEditMode.SelectedPanelIndex = 1 Then
		    btnOk.Enabled = (tbGameNameExpert.Text.Length > 2) And _
		    (tbExpertText.Text.Length > 0)
		  Else
		    btnOk.Enabled = (tbGameName.Text.Length > 2) And _
		    (tbStartFile.Text.Length > 2) And _
		    (tbMountC.Text.Length > 2)
		  End
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

	#tag Method, Flags = &h21
		Private Sub StyleText()
		  //tbExpertText.StyledText.Bold(0, tbExpertText.Text.Length) = False
		  //tbExpertText.StyledText.TextColor(0, tbExpertText.Text.Length) = Color.TextColor
		  //tbExpertText.StyledText.Italic(0, tbExpertText.Text.Length) = false
		  //
		  //Var i As Integer = 0
		  //Var headerOpen As Integer = -1
		  //Var headerClose As Integer = -1
		  //Var stringOpen As Integer = -1
		  //Var stringClose As Integer = -1
		  //
		  //For Each c As String In tbExpertText.Text.Characters
		  //
		  //Select Case c
		  //Case "["
		  //headerOpen = i
		  //
		  //Case "]"
		  //headerClose = i
		  //
		  //Case """"
		  //If stringOpen < 0 Then
		  //stringOpen = i
		  //Else
		  //stringClose = i
		  //End
		  //
		  //Case "="
		  //Var t As Integer = tbExpertText.CharacterPosition(tbExpertText.LineNumber(i))
		  //tbExpertText.StyledText.TextColor(t-1, i - t + 1) = &c0096FF00
		  //
		  //End
		  //
		  //If headerOpen >= 0 And headerClose >= 0 Then
		  //tbExpertText.StyledText.Bold(headerOpen, headerClose - headerOpen + 1) = True
		  //tbExpertText.StyledText.TextColor(headerOpen, headerClose - headerOpen + 1) = &c00919200 
		  //headerOpen = -1
		  //headerClose = -1
		  //End
		  //
		  //If stringOpen >= 0 And stringClose >= 0 Then
		  //tbExpertText.StyledText.TextColor(stringOpen, stringClose - stringOpen + 1) = &cFF40FF00
		  //stringOpen = -1
		  //stringClose = -1
		  //End
		  //
		  //i = i + 1
		  //Next
		  //
		  //Var eol As String = EndOfLine
		  //i = 0
		  //For Each line As String In tbExpertText.Text.Split(EndOfLine)
		  //If line.Trim.BeginsWith("#") Then
		  //tbExpertText.StyledText.TextColor(i, line.Length) = &c008E0000
		  //tbExpertText.StyledText.Italic(i, line.Length) = True
		  //End
		  //i = i + line.Length + eol.Length
		  //Next
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		CurrentDOSGame As DOSGame
	#tag EndProperty

	#tag Property, Flags = &h21
		Private IsDirty As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		OrigGameFileName As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ResultOk As Boolean = false
	#tag EndProperty


	#tag Constant, Name = btnSelectFolder_Tooltip, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Select folder\xE2\x80\xA6"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Verzeichnis w\xC3\xA4hlen\xE2\x80\xA6"
	#tag EndConstant

	#tag Constant, Name = btnShowDosBoxWiki_Tooltip, Type = String, Dynamic = True, Default = \"DOSBox Wiki im Internet aufrufen", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Open DOSBox wiki on the internet."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"DOSBox Wiki im Internet aufrufen"
	#tag EndConstant

	#tag Constant, Name = cbAutoExit_Caption, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Close DOSBox window automatically"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"DOSBox Fenster automatisch schlie\xC3\x9Fen"
	#tag EndConstant

	#tag Constant, Name = cbMountAsCDROM_Caption, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"mount as CDROM"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"als CD-ROM einbinden"
	#tag EndConstant

	#tag Constant, Name = kbtnCancel_Caption, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Cancel"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Abbrechen"
	#tag EndConstant

	#tag Constant, Name = kEditGameWindow_Title, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"DOSBox configuration"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"DOSBox Konfiguration"
	#tag EndConstant

	#tag Constant, Name = kOkUseExpert, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Click OK to use the expert configuration and disable the simple config."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mit OK wird f\xC3\xBCr dieses Spiel die manuelle (Experte) Konfiguration verwendet und die einfache deaktiviert."
	#tag EndConstant

	#tag Constant, Name = kOkUseSimple, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Click OK to use the simple configuration and disable the expert config."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mit OK wird f\xC3\xBCr dieses Spiel die einfache Konfiguration verwendet und die manuelle (Experte) verworfen."
	#tag EndConstant

	#tag Constant, Name = kSelectC_Action, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Use"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Verwenden"
	#tag EndConstant

	#tag Constant, Name = kSelectC_Title, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Mount C:\\ - select folder"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Verzeichnis als C:\\ w\xC3\xA4hlen"
	#tag EndConstant

	#tag Constant, Name = kSelectD_Title, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Mount D:\\ - select folder"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Mount D:\\ - Verzeichnis w\xC3\xA4hlen"
	#tag EndConstant

	#tag Constant, Name = kSelectStartFile_Action, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Use"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Verwenden"
	#tag EndConstant

	#tag Constant, Name = kSelectStartFile_SelectDrive_Expl, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Select drive containing the start-file."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"W\xC3\xA4hle das Laufwerk welches die Startdatei enth\xC3\xA4lt."
	#tag EndConstant

	#tag Constant, Name = kSelectStartFile_SelectDrive_Title, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Select start drive"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Startlaufwerk ausw\xC3\xA4hlen"
	#tag EndConstant

	#tag Constant, Name = kSelectStartFile_Title, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Select start-file"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Startdatei w\xC3\xA4hlen"
	#tag EndConstant

	#tag Constant, Name = ktabEditMode_PanelExpert, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Expert"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Experte"
	#tag EndConstant

	#tag Constant, Name = ktabEditMode_PanelSimple, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Simple"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Einfach"
	#tag EndConstant

	#tag Constant, Name = lbExpertTitle_Text, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Edit config-file manually."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Konfigurationsdatei manuell bearbeiten."
	#tag EndConstant

	#tag Constant, Name = lbGameName_Text, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Name of game *"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Name des Spiels *"
	#tag EndConstant

	#tag Constant, Name = lbMachine_Text, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Machine"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Maschine"
	#tag EndConstant

	#tag Constant, Name = lbMandatory_Text, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"* Mandatory"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"* Pflichtfeld"
	#tag EndConstant

	#tag Constant, Name = lbMountC_Text, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Folder to mount as C:\\ *"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Verzeichnis als C:\\ einbinden *"
	#tag EndConstant

	#tag Constant, Name = lbMountD_Text, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Folder to mount as D:\\"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Verzeichnis als D:\\ einbinden"
	#tag EndConstant

	#tag Constant, Name = lbResolution_Text, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Resolution"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Aufl\xC3\xB6sung"
	#tag EndConstant

	#tag Constant, Name = lbStartFile_Text, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Start executable *"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Start Datei *"
	#tag EndConstant

	#tag Constant, Name = rbScreenFull_Caption, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Fullscreen"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Vollbild"
	#tag EndConstant

	#tag Constant, Name = rbScreenWindow_Caption, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Windowed"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Fenster"
	#tag EndConstant

	#tag Constant, Name = tbGameNameExpert_Hint, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Name of game (min. 3 char.)"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Spielname (min. 3 Zeichen)"
	#tag EndConstant

	#tag Constant, Name = tbGameNameExpert_Tooltip, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Name of game\x2C at least 3 characters."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Name des Spiels\x2C mindestens 3 Zeichen."
	#tag EndConstant

	#tag Constant, Name = tbGameName_Hint, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"min. 3 character"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"mindestens 3 Zeichen"
	#tag EndConstant


#tag EndWindowCode

#tag Events btnCancel
	#tag Event
		Sub Pressed()
		  If Self.CanClose Then
		    self.ResultOk = false
		    Self.Close
		  end
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnOk
	#tag Event
		Sub Pressed()
		  If tabEditMode.SelectedPanelIndex = 0 Then
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
		    Self.CurrentDOSGame.DOSBoxSettingsTextExpert = tbExpertText.Text
		  Else
		    Self.CurrentDOSGame.DOSBoxSettingsTextExpert = ""
		  End
		  
		  Self.ResultOk = True
		  Self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tabEditMode
	#tag Event
		Sub PanelChanged()
		  EnableOkButton
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popupResolution
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  Self.IsDirty = True
		  self.CurrentDOSGame.Resolution = me.SelectedRowValue
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.SelectRowWithValue(self.CurrentDOSGame.Resolution)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rbScreenWindow
	#tag Event
		Sub ValueChanged()
		  Self.IsDirty = True
		  Self.CurrentDOSGame.Fullscreen = not Me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.Value = not self.CurrentDOSGame.Fullscreen
		End Sub
	#tag EndEvent
#tag EndEvents
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
		  me.Text = self.CurrentDOSGame.Name
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rbScreenFull
	#tag Event
		Sub ValueChanged()
		  Self.IsDirty = True
		  Self.CurrentDOSGame.Fullscreen = Me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.Value = self.CurrentDOSGame.Fullscreen
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popupCpuCycles
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  Self.IsDirty = True
		  self.CurrentDOSGame.CpuCycles = me.SelectedRowValue
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.SelectRowWithValue(self.CurrentDOSGame.CpuCycles)
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
		  me.Text = self.CurrentDOSGame.StartFile
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
		  dlg.InitialFolder = GetGameFolder
		  
		  Var f As FolderItem = dlg.ShowModal
		  
		  If f <> Nil Then
		    tbMountD.Text = f.NativePath
		  End 
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
		  dlg.InitialFolder = GetGameFolder
		  
		  Var f As FolderItem = dlg.ShowModal
		  
		  If f <> Nil Then
		    tbMountC.Text = f.NativePath
		    
		    If tbGameName.Text.Length = 0 Then
		      tbGameName.Text = f.Name
		    End
		  End 
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  //If CurrentDOSGame.Name.Length = 0 Then
		  //Me.Press
		  //tbGameName.SetFocus
		  //End
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbMountAsCDROM
	#tag Event
		Sub ValueChanged()
		  Self.IsDirty = True
		  Self.CurrentDOSGame.MountDAsCdrom = Me.Value
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
		  self.CurrentDOSGame.FolderMountAsD = me.Text
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.Text = self.CurrentDOSGame.FolderMountAsD
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
		  me.Text = self.CurrentDOSGame.FolderMountAsC
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popupMachine
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  Self.IsDirty = True
		  self.CurrentDOSGame.MachineType = me.SelectedRowValue
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.SelectRowWithValue(self.CurrentDOSGame.MachineType)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbGameNameExpert
	#tag Event
		Sub TextChanged()
		  Self.IsDirty = True
		  Self.CurrentDOSGame.Name = Me.Text
		  EnableOkButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.Text = self.CurrentDOSGame.Name
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
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popupScaler
	#tag Event
		Sub SelectionChanged(item As DesktopMenuItem)
		  IsDirty = True
		  self.CurrentDOSGame.Scaler = me.SelectedRowValue
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  me.SelectRowWithValue(self.CurrentDOSGame.Scaler)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbExpertText
	#tag Event
		Sub Initialized()
		  
		  
		  If CurrentDOSGame.DOSBoxSettingsTextExpert.Length = 0 Then
		    Me.Text = CurrentDOSGame.DOSBoxSettingsText
		  Else
		    Me.Text = CurrentDOSGame.DOSBoxSettingsTextExpert
		  End
		  
		  
		  #If TargetWindows Then
		    Me.Top = 100
		    Me.Left = 21
		    Me.Width = tabEditMode.Width - 4
		    
		  #EndIf
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Label1
	#tag Event
		Function MouseDown(x As Integer, y As Integer) As Boolean
		  ShowUrl(DosBox.kDOSBoxWikiUrl)
		End Function
	#tag EndEvent
	#tag Event
		Sub MouseEnter()
		  me.MouseCursor = System.Cursors.FingerPointer
		End Sub
	#tag EndEvent
	#tag Event
		Sub MouseExit()
		  me.MouseCursor = System.Cursors.StandardPointer
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
	#tag ViewProperty
		Name="OrigGameFileName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
