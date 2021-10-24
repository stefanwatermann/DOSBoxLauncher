#tag Window
Begin Window EditGameWindow
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
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   False
   Title           =   "Spiel Setup"
   Type            =   8
   Visible         =   False
   Width           =   538
   Begin TabPanel tabEditMode
      AllowAutoDeactivate=   True
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   434
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Panels          =   ""
      Scope           =   2
      SmallTabs       =   False
      TabDefinition   =   "Einfach\rExperte"
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   12
      Transparent     =   False
      Underline       =   False
      Value           =   1
      Visible         =   True
      Width           =   498
      Begin Label Label7
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
         Text            =   "Start Datei *"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   253
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   300
      End
      Begin PopupMenu popupScaler
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
         Top             =   352
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   110
      End
      Begin Label Label4
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
         Top             =   330
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   87
      End
      Begin PopupMenu popupResolution
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
         Top             =   352
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   110
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
         Text            =   "Auflösung"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   330
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   87
      End
      Begin RadioButton rbScreenWindow
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Fenster"
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
         Top             =   384
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   90
      End
      Begin TextField tbGameName
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
         Hint            =   "mindestens 3 Zeichen"
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
         Top             =   73
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   300
      End
      Begin RadioButton rbScreenFull
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "Vollbild"
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
         Top             =   406
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         Width           =   94
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
         Text            =   "Name des Spiels *"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   50
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   232
      End
      Begin PopupMenu popupCpuCycles
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
         Top             =   352
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   94
      End
      Begin Label Label9
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
         Top             =   330
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   87
      End
      Begin Label Label8
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
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   398
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
         Text            =   "* Pflichtfeld"
         TextAlignment   =   3
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   50
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin PushButton btnSelectStartFile
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
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   12
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   277
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   28
      End
      Begin TextField tbStartFile
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
         TabIndex        =   11
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   276
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   428
      End
      Begin PushButton btnSelectFolderD
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
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   9
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   201
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   27
      End
      Begin PushButton btnSelectFolderC
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
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         TabIndex        =   5
         TabPanelIndex   =   1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   137
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   27
      End
      Begin CheckBox cbMountAsCDROM
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "als CD-ROM mounten"
         DataField       =   ""
         DataSource      =   ""
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
         Top             =   177
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   0
         Width           =   219
      End
      Begin TextField tbMountD
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
         Hint            =   "optional"
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
         TabIndex        =   8
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   200
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   428
      End
      Begin Label Label6
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
         Text            =   "Verzeichnis als D: mounten"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   177
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   214
      End
      Begin TextField tbMountC
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
         TabIndex        =   4
         TabPanelIndex   =   1
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   136
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   428
      End
      Begin Label Label5
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
         Text            =   "Verzeichnis als C: mounten *"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   113
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   352
      End
      Begin PopupMenu popupMachine
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
         Top             =   352
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   110
      End
      Begin Label Label3
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
         Text            =   "Maschine"
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   330
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   87
      End
      Begin TextArea tbExpertText
         AllowAutoDeactivate=   True
         AllowFocusRing  =   False
         AllowSpellChecking=   False
         AllowStyledText =   True
         AllowTabs       =   False
         BackgroundColor =   &cFFFFFF00
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         FontName        =   "Courier New"
         FontSize        =   13.0
         FontUnit        =   0
         Format          =   ""
         HasBorder       =   False
         HasHorizontalScrollbar=   True
         HasVerticalScrollbar=   True
         Height          =   355
         HideSelection   =   True
         Index           =   -2147483648
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   21
         LineHeight      =   0.0
         LineSpacing     =   1.1000000000000000888178
         LockBottom      =   True
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         MaximumCharactersAllowed=   5000
         Multiline       =   True
         ReadOnly        =   False
         Scope           =   2
         TabIndex        =   3
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   ""
         Top             =   91
         Transparent     =   True
         Underline       =   False
         UnicodeMode     =   1
         ValidationMask  =   ""
         Visible         =   True
         Width           =   496
      End
      Begin Label lbExpertTitle
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
         InitialParent   =   "tabEditMode"
         Italic          =   False
         Left            =   237
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   2
         Selectable      =   False
         TabIndex        =   1
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   "Konfigurationsdatei manuell bearbeiten."
         TextAlignment   =   0
         TextColor       =   &c79797900
         Tooltip         =   ""
         Top             =   58
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   233
      End
      Begin TextField tbGameNameExpert
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
         Hint            =   "Spielname (min. 3 Zeichen)"
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
         TabIndex        =   0
         TabPanelIndex   =   2
         TabStop         =   True
         Text            =   ""
         TextAlignment   =   0
         TextColor       =   &c00000000
         Tooltip         =   "Name des Spiels, mindestens 3 Zeichen."
         Top             =   56
         Transparent     =   False
         Underline       =   False
         ValidationMask  =   ""
         Visible         =   True
         Width           =   180
      End
      BeginSegmentedButton SegmentedButton btnShowDosBoxWiki
         Enabled         =   True
         Height          =   24
         Index           =   -2147483648
         InitialParent   =   "tabEditMode"
         Left            =   472
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         MacButtonStyle  =   0
         Scope           =   2
         Segments        =   "?\n\nFalse"
         SelectionStyle  =   2
         TabIndex        =   2
         TabPanelIndex   =   2
         TabStop         =   False
         Tooltip         =   "DOSBox Wiki im Internet aufrufen"
         Top             =   57
         Transparent     =   False
         Visible         =   True
         Width           =   26
      End
      Begin CheckBox cbAutoExit
         AllowAutoDeactivate=   True
         Bold            =   False
         Caption         =   "DOSBox Fenster automatisch schließen"
         DataField       =   ""
         DataSource      =   ""
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
         Top             =   406
         Transparent     =   False
         Underline       =   False
         Value           =   False
         Visible         =   True
         VisualState     =   0
         Width           =   293
      End
   End
   Begin PushButton btnCancel
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   True
      Caption         =   "Cancel"
      Default         =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   275
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
      Top             =   460
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin PushButton btnOk
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
      Left            =   183
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
      Top             =   460
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  If CurrentDOSGame.ExpertMode Then
		    tabEditMode.Value = 1
		  Else
		    tabEditMode.Value = 0
		  end
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
		  If tabEditMode.Value = 1 Then
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
		  tbExpertText.StyledText.Bold(0, tbExpertText.Text.Length) = False
		  tbExpertText.StyledText.TextColor(0, tbExpertText.Text.Length) = Color.TextColor
		  tbExpertText.StyledText.Italic(0, tbExpertText.Text.Length) = false
		  
		  Var i As Integer = 0
		  Var headerOpen As Integer = -1
		  Var headerClose As Integer = -1
		  Var stringOpen As Integer = -1
		  Var stringClose As Integer = -1
		  
		  For Each c As String In tbExpertText.Text.Characters
		    
		    Select Case c
		    Case "["
		      headerOpen = i
		      
		    Case "]"
		      headerClose = i
		      
		    Case """"
		      If stringOpen < 0 Then
		        stringOpen = i
		      Else
		        stringClose = i
		      End
		      
		    Case "="
		      Var t As Integer = tbExpertText.CharacterPosition(tbExpertText.LineNumber(i))
		      tbExpertText.StyledText.TextColor(t-1, i - t + 1) = &c0096FF00
		      
		    End
		    
		    If headerOpen >= 0 And headerClose >= 0 Then
		      tbExpertText.StyledText.Bold(headerOpen, headerClose - headerOpen + 1) = True
		      tbExpertText.StyledText.TextColor(headerOpen, headerClose - headerOpen + 1) = &c00919200 
		      headerOpen = -1
		      headerClose = -1
		    End
		    
		    If stringOpen >= 0 And stringClose >= 0 Then
		      tbExpertText.StyledText.TextColor(stringOpen, stringClose - stringOpen + 1) = &cFF40FF00
		      stringOpen = -1
		      stringClose = -1
		    End
		    
		    i = i + 1
		  Next
		  
		  Var eol As String = EndOfLine
		  i = 0
		  For Each line As String In tbExpertText.Text.Split(EndOfLine)
		    If line.Trim.BeginsWith("#") Then
		      tbExpertText.StyledText.TextColor(i, line.Length) = &c008E0000
		      tbExpertText.StyledText.Italic(i, line.Length) = True
		    End
		    i = i + line.Length + eol.Length
		  Next
		  
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


#tag EndWindowCode

#tag Events tabEditMode
	#tag Event
		Sub Change()
		  EnableOkButton
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popupScaler
	#tag Event
		Sub Change()
		  IsDirty = True
		  self.CurrentDOSGame.Scaler = me.SelectedRow
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.SelectRowWithValue(self.CurrentDOSGame.Scaler)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popupResolution
	#tag Event
		Sub Change()
		  Self.IsDirty = True
		  self.CurrentDOSGame.Resolution = me.SelectedRow
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.SelectRowWithValue(self.CurrentDOSGame.Resolution)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rbScreenWindow
	#tag Event
		Sub Action()
		  Self.IsDirty = True
		  Self.CurrentDOSGame.Fullscreen = not Me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = not self.CurrentDOSGame.Fullscreen
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbGameName
	#tag Event
		Sub TextChange()
		  Self.IsDirty = True
		  Self.CurrentDOSGame.Name = Me.Text
		  EnableOkButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = self.CurrentDOSGame.Name
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rbScreenFull
	#tag Event
		Sub Action()
		  Self.IsDirty = True
		  Self.CurrentDOSGame.Fullscreen = Me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = self.CurrentDOSGame.Fullscreen
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popupCpuCycles
	#tag Event
		Sub Change()
		  Self.IsDirty = True
		  self.CurrentDOSGame.CpuCycles = me.SelectedRow
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.SelectRowWithValue(self.CurrentDOSGame.CpuCycles)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSelectStartFile
	#tag Event
		Sub Action()
		  Var useC As Boolean = True
		  
		  If Self.CurrentDOSGame.FolderMountAsD.Length > 0 Then
		    Var d As New MessageDialog 
		    d.IconType = MessageDialog.IconTypes.Question
		    d.ActionButton.Caption = "C:"
		    d.AlternateActionButton.Caption = "D:"
		    d.AlternateActionButton.Visible = True
		    d.CancelButton.Visible = False               
		    d.Message = "Startlaufwerk auswählen"
		    d.Explanation = "Wähle das Laufwerk welches die Startdatei enthält."
		    
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
		  dlg.ActionButtonCaption = "Verwenden"
		  dlg.Title = "Startdatei wählen"
		  dlg.PromptText = "Startdatei wählen"
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
		Sub TextChange()
		  Self.IsDirty = True
		  Self.CurrentDOSGame.StartFile = Me.Text
		  EnableOkButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = self.CurrentDOSGame.StartFile
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnSelectFolderD
	#tag Event
		Sub Action()
		  Var dlg As New SelectFolderDialog
		  dlg.ActionButtonCaption = "Verwenden"
		  dlg.Title = "Mount D: / Verzeichnis wählen"
		  dlg.PromptText = "Mount D: / Verzeichnis wählen"
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
		Sub Action()
		  Var dlg As New SelectFolderDialog
		  dlg.ActionButtonCaption = "Verwenden"
		  dlg.Title = "Mount C: / Verzeichnis wählen"
		  dlg.PromptText = "Mount C: / Verzeichnis wählen"
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
#tag EndEvents
#tag Events cbMountAsCDROM
	#tag Event
		Sub Action()
		  Self.IsDirty = True
		  Self.CurrentDOSGame.MountDAsCdrom = Me.Value
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = self.CurrentDOSGame.MountDAsCdrom
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbMountD
	#tag Event
		Sub TextChange()
		  IsDirty = True
		  self.CurrentDOSGame.FolderMountAsD = me.Text
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = self.CurrentDOSGame.FolderMountAsD
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbMountC
	#tag Event
		Sub TextChange()
		  IsDirty = True
		  Self.CurrentDOSGame.FolderMountAsC = Me.Text
		  EnableOkButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = self.CurrentDOSGame.FolderMountAsC
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events popupMachine
	#tag Event
		Sub Change()
		  Self.IsDirty = True
		  self.CurrentDOSGame.MachineType = me.SelectedRow
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.SelectRowWithValue(self.CurrentDOSGame.MachineType)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbExpertText
	#tag Event
		Sub Open()
		  If CurrentDOSGame.DOSBoxSettingsTextExpert.Length = 0 Then
		    Me.Text = CurrentDOSGame.DOSBoxSettingsText
		  Else
		    Me.Text = CurrentDOSGame.DOSBoxSettingsTextExpert
		  End
		End Sub
	#tag EndEvent
	#tag Event
		Sub TextChange()
		  StyleText
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbGameNameExpert
	#tag Event
		Sub TextChange()
		  Self.IsDirty = True
		  Self.CurrentDOSGame.Name = Me.Text
		  EnableOkButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Value = self.CurrentDOSGame.Name
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnShowDosBoxWiki
	#tag Event
		Sub Pressed(segmentIndex as integer)
		  ShowUrl(DosBox.kDOSBoxWikiUrl)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbAutoExit
	#tag Event
		Sub Open()
		  me.Value = self.CurrentDOSGame.AutoExit
		End Sub
	#tag EndEvent
	#tag Event
		Sub Action()
		  Self.IsDirty = True
		  Self.CurrentDOSGame.AutoExit = Me.Value
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Action()
		  If Self.CanClose Then
		    self.ResultOk = false
		    Self.Close
		  end
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnOk
	#tag Event
		Sub Action()
		  If tabEditMode.Value = 0 Then
		    If Self.CurrentDOSGame.ExpertMode Then
		      Var r As Integer
		      r = MsgBox("Mit OK wird für dieses Spiel die einfache Konfiguration verwendet und die manuelle verworfen.", 33)
		      If r = 1 Then
		        Self.CurrentDOSGame.ExpertMode = False
		      Else
		        Return
		      End
		    End
		  Else
		    If Not Self.CurrentDOSGame.ExpertMode Then
		      Var r As Integer
		      r = MsgBox("Mit OK wird für dieses Spiel die manuelle Konfiguration verwendet und die einfache deaktiviert.", 33)
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
	#tag ViewProperty
		Name="OrigGameFileName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="string"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
