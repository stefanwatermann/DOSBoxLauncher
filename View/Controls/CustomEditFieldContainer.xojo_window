#tag DesktopWindow
Begin DesktopContainer CustomEditFieldContainer
   AllowAutoDeactivate=   True
   AllowFocus      =   False
   AllowFocusRing  =   False
   AllowTabs       =   True
   Backdrop        =   0
   BackgroundColor =   &cC0C0C000
   Composited      =   False
   Enabled         =   True
   HasBackgroundColor=   True
   Height          =   300
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
   Transparent     =   False
   Visible         =   True
   Width           =   300
   Begin DesktopTextArea tbExpertText
      AllowAutoDeactivate=   True
      AllowFocusRing  =   False
      AllowSpellChecking=   False
      AllowStyledText =   True
      AllowTabs       =   True
      BackgroundColor =   &cFFFFFF
      Bold            =   False
      Enabled         =   True
      FontName        =   "System"
      FontSize        =   0.0
      FontUnit        =   0
      Format          =   ""
      HasBorder       =   True
      HasHorizontalScrollbar=   True
      HasVerticalScrollbar=   True
      Height          =   298
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   1
      LineHeight      =   0.0
      LineSpacing     =   1.3000000000000000444089
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      MaximumCharactersAllowed=   0
      Multiline       =   True
      ReadOnly        =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   1
      Transparent     =   False
      Underline       =   False
      UnicodeMode     =   0
      ValidationMask  =   ""
      Visible         =   True
      Width           =   298
   End
End
#tag EndDesktopWindow

#tag WindowCode
	#tag Event
		Sub Opening()
		  Me.BackgroundColor = Colors.WindowBackground
		  Me.SetFont
		  Me.InitKeywords
		  
		  RaiseEvent Initialized
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As Rect)
		  g.DrawingColor = me.BackgroundColor
		  g.FillRectangle(0, 0, g.Width, g.Height)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub HighlightSyntax(tb as DesktopTextArea)
		  tb.TextColor = Colors.TextForeground
		  
		  // sections
		  For Each section As String In Me.Sections
		    Var start As Integer = tb.Text.IndexOf(section)
		    If start >= 0 Then
		      tb.SelectionStart = start
		      tb.SelectionLength = section.Length
		      tb.SelectionTextColor = &c00F900
		    End
		  Next
		  
		  // keywords
		  For Each keyword As String In Me.Keywords
		    Var start As Integer = tb.Text.IndexOf(keyword)
		    Var eq As Integer = tb.Text.IndexOf(start, "=")
		    If start >= 0 And eq < start +keyword.Length + 20 Then
		      tb.SelectionStart = start
		      tb.SelectionLength = keyword.Length
		      tb.SelectionTextColor = &cD783FF
		    End
		  Next
		  
		  // strings
		  Var i As Integer = 0
		  Var start As Integer = -1
		  
		  For Each c As String In tb.Text.Characters
		    
		    If c = """" Then
		      If start < 0 Then
		        start = i
		      Else
		        tb.SelectionStart = start
		        tb.SelectionLength = i - start + 1
		        tb.SelectionTextColor = &cA4F1FF00
		        start = -1
		      End
		    End
		    
		    i = i + 1
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InitKeywords()
		  Me.Keywords = kSyntax_Keywords.Split(EndOfLine)
		  Me.Sections = kSyntax_Sections.Split(EndOfLine)
		  Me.Params = kSyntax_Params.Split(EndOfLine)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub setAutomaticQuoteSubstitutionEnabled(t as DesktopTextArea, value as Boolean)
		  // https://forum.xojo.com/t/how-to-prevent-smart-quotes-from-being-entered-into-a-textarea/21111/6
		  
		  #If TargetCocoa Then
		    Declare Function NSClassFromString Lib "Cocoa" (aClassName As CFStringRef) As Ptr
		    
		    dim myTextArea as ptr
		    declare function documentView lib "Cocoa" selector "documentView" _
		    (obj_id As ptr) As Ptr
		    
		    myTextArea = documentView(t.Handle)
		    
		    Declare Sub setAutomaticQuoteSubstitutionEnabled Lib "Cocoa" Selector "setAutomaticQuoteSubstitutionEnabled:" _
		    (Id as ptr, value as Boolean)
		    
		    setAutomaticQuoteSubstitutionEnabled (myTextArea, value)
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SetFont()
		  // set non-prop font for expert-editor
		  #If TargetMacOS Then
		    tbExpertText.FontName = "Monaco"
		  #ElseIf TargetLinux Then
		    tbExpertText.FontName = "Monospace"
		  #ElseIf TargetWindows
		    tbExpertText.FontName = "Consolas"
		  #Else
		    tbExpertText.FontName = "Curier"
		  #EndIf
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Initialized()
	#tag EndHook


	#tag Property, Flags = &h21
		Private Keywords() As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Params() As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Sections() As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return tbExpertText.Text
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  tbExpertText.Text = value
			End Set
		#tag EndSetter
		Text As String
	#tag EndComputedProperty


	#tag Constant, Name = kSyntax_Keywords, Type = String, Dynamic = False, Default = \"frameskip\naspect\nscaler\ncore\ncputype\ncycles\ncycleup\ncycledown\nmpu401\nmididevice\nmidiconfig\nfullscreen\nfulldouble\nfullresolution\nwindowresolution\noutput\nautolock\nsensitivity\nwaitonerror\npriority\nmapperfile\nusescancodes\nlanguage\nmemsize\nmachine\ncaptures\nserialX\nxms\nems\numb\nkeyboardlayout\nipx", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSyntax_Params, Type = String, Dynamic = False, Default = \"[sdl]\n[dosbox]\n[render]\n[cpu]", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSyntax_Sections, Type = String, Dynamic = False, Default = \"[sdl]\n[dosbox]\n[render]\n[cpu]\n[mixer]\n[midi]\n[sblaster]\n[gus]\n[speaker]\n[joystick]\n[serial]\n[dos]\n[ipx]\n[autoexec]", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events tbExpertText
	#tag Event
		Sub TextChanged()
		  Var tempStart As Integer = Me.SelectionStart
		  
		  // remove all styles when pasted from clicpboard
		  Var t As String = Me.Text
		  Me.Text = t
		  
		  HighlightSyntax(Me)
		  
		  Me.SelectionStart = tempStart
		  me.SelectionLength = 0
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  setAutomaticQuoteSubstitutionEnabled me, false
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="Composited"
		Visible=true
		Group="Windows Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
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
		Name="InitialParent"
		Visible=false
		Group="Position"
		InitialValue=""
		Type="String"
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
		Name="Text"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
#tag EndViewBehavior
