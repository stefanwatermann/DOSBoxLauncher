#tag Window
Begin Window ErrorReporterMessage Attributes ( Version = 1.0, Copyright = "2021 - watermann-it.de" ) 
   Backdrop        =   0
   BackgroundColor =   &cFFFFFF00
   Composite       =   False
   DefaultLocation =   1
   FullScreen      =   False
   HasBackgroundColor=   False
   HasCloseButton  =   True
   HasFullScreenButton=   False
   HasMaximizeButton=   False
   HasMinimizeButton=   False
   Height          =   265
   ImplicitInstance=   False
   MacProcID       =   0
   MaximumHeight   =   32000
   MaximumWidth    =   32000
   MenuBar         =   0
   MenuBarVisible  =   True
   MinimumHeight   =   64
   MinimumWidth    =   64
   Resizeable      =   False
   Title           =   "#Window_Title"
   Type            =   0
   Visible         =   True
   Width           =   470
   Begin TextArea txtErrorDetails
      AllowAutoDeactivate=   True
      AllowFocusRing  =   False
      AllowSpellChecking=   False
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
      Height          =   85
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   35
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   True
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c79797900
      Tooltip         =   ""
      Top             =   120
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   1
      ValidationMask  =   ""
      Visible         =   True
      Width           =   405
   End
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
      Left            =   195
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacButtonStyle  =   0
      Scope           =   2
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   225
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   80
   End
   Begin Label lbErrorTitle
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   14.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   35
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "#lbErrorTitle_Text"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   17
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   410
   End
   Begin Label lbErrorMessage
      AllowAutoDeactivate=   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      FontName        =   "SmallSystem"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   50
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   35
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   True
      Scope           =   2
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Untitled"
      TextAlignment   =   0
      TextColor       =   &c00000000
      Tooltip         =   ""
      Top             =   49
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   410
   End
   Begin PushButton btnCopy2Clip
      AllowAutoDeactivate=   True
      Bold            =   False
      Cancel          =   False
      Caption         =   "#btnCopy2Clip_Caption"
      Default         =   False
      Enabled         =   True
      FontName        =   "SmallSystem"
      FontSize        =   0.0
      FontUnit        =   0
      Height          =   20
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   375
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
      Tooltip         =   "#btnCopy2Clip_Tooltip"
      Top             =   212
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   65
   End
   Begin Label Label1
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
      Left            =   36
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
      Text            =   "#Label1_Text"
      TextAlignment   =   0
      TextColor       =   &c79797900
      Tooltip         =   ""
      Top             =   101
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   188
   End
   Begin Rectangle Rectangle1
      AllowAutoDeactivate=   True
      BorderThickness =   0.0
      BottomRightColor=   &c00000000
      Enabled         =   False
      FillColor       =   &c94110000
      Height          =   265
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   2
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      TopLeftColor    =   &c00000000
      Transparent     =   False
      Visible         =   True
      Width           =   5
   End
End
#tag EndWindow

#tag WindowCode
	#tag Method, Flags = &h0
		Sub Constructor(err as RuntimeException)
		  Self.Title = lbErrorTitle_Text
		  
		  If err.Message.Length > 0 Then
		    Self.Message = err.Message + " (" + Str(err.ErrorNumber) + ")"
		  Else
		    Self.Message = ""
		  End
		  
		  Self.Error = err
		  
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(title as string, message as string, err as RuntimeException)
		  Self.Title = title
		  Self.Message = message
		  Self.Error = err
		  
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function JoinStackFrames(stackFrames() as StackFrame, delimiter as string) As string
		  Var s() As String
		  
		  If stackFrames <> Nil Then
		    For Each frame As StackFrame In stackFrames
		      s.AddRow(Str(frame.Address) + ": " + frame.Name)
		    Next
		  End
		  
		  Return Join(s, delimiter)
		  
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Error As RuntimeException
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Message As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Title As String
	#tag EndProperty


	#tag Constant, Name = btnCopy2Clip_Caption, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Copy"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Kopieren"
	#tag EndConstant

	#tag Constant, Name = btnCopy2Clip_Tooltip, Type = String, Dynamic = True, Default = \"Fehlerdetails in die Zwischenablage kopieren.", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Copy error-details to clipboard."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Fehlerdetails in die Zwischenablage kopieren."
	#tag EndConstant

	#tag Constant, Name = Label1_Text, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Error details"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Fehlerdetails"
	#tag EndConstant

	#tag Constant, Name = lbErrorTitle_Text, Type = String, Dynamic = True, Default = \"Untitled", Scope = Private
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ein Fehler ist aufgetreten\x2C die Anwendung wird beendet."
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"An error occured. The application will close now."
	#tag EndConstant

	#tag Constant, Name = Window_Title, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"An Error Occured"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ein Fehler ist aufgetreten"
	#tag EndConstant


#tag EndWindowCode

#tag Events txtErrorDetails
	#tag Event
		Sub Open()
		  Dim type As String = Introspection.GetType(error).Name
		  Dim stack As String = Join(error.Stack, EndOfLine)
		  Var stackFrames As String = JoinStackFrames(error.StackFrames, EndOfLine)
		  
		  me.Text = type + EndOfLine + stack + EndOfLine + stackFrames
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnOk
	#tag Event
		Sub Action()
		  Self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lbErrorTitle
	#tag Event
		Sub Open()
		  me.Text = self.Title
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events lbErrorMessage
	#tag Event
		Sub Open()
		  me.Text = self.Message
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCopy2Clip
	#tag Event
		Sub Action()
		  If txtErrorDetails.Text.Length > 0 Then
		    Var c As New Clipboard
		    c.Text = txtErrorDetails.Text
		    c.Close
		  End
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
		InitialValue=""
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
