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
      HasBorder       =   False
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
		Private Sub HighlightComments(tb as DesktopTextArea, leftIndex as integer, line as string)
		  tb.SelectionStart = leftIndex
		  tb.SelectionLength = line.Length
		  tb.SelectionTextColor = Self.HighlightColor_Comment
		  tb.SelectionItalic = true
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub HighlightKeywords(tb as DesktopTextArea, leftIndex as integer, line as string)
		  For Each keyword As String In Me.Keywords
		    Var start As Integer = line.IndexOf(keyword)
		    If start >= 0 Then
		      tb.SelectionStart = start + leftIndex
		      tb.SelectionLength = keyword.Length
		      tb.SelectionTextColor = Self.HighlightColor_Keyword
		    End
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub HighlightSections(tb as DesktopTextArea, leftIndex as integer, line as string)
		  For Each section As String In Me.Sections
		    Var start As Integer = line.IndexOf(section)
		    If start >= 0 Then
		      tb.SelectionStart = start + leftIndex
		      tb.SelectionLength = section.Length
		      tb.SelectionTextColor = Self.HighlightColor_Section
		      tb.SelectionBold = true
		    End
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub HighlightStrings(tb as DesktopTextArea, leftIndex as integer, line as string)
		  Var i As Integer = 0
		  Var start As Integer = -1
		  
		  For Each c As String In line.Characters
		    
		    If c = """" Then
		      If start < 0 Then
		        start = i
		      Else
		        tb.SelectionStart = leftIndex + start
		        tb.SelectionLength =  i - start + 1
		        tb.SelectionTextColor = HighlightColor_String
		        start = -1
		      End
		    End
		    
		    i = i + 1
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub HighlightSyntaxLine(tb as DesktopTextArea, styleCurrentLineOnly as Boolean = true)
		  SaveCursorPos(tb)
		  
		  #If TargetMacOS Then
		    styleCurrentLineOnly = False
		  #EndIf
		  
		  Var currentLineIndex As Integer = tb.LineNumber(tb.SelectionStart)
		  
		  Var lines() As String = tb.Text.ReplaceLineEndings(EndOfLine).Split(EndOfLine)
		  
		  Var lineIndex As Integer = 0
		  Var leftIndex As Integer = 0
		  
		  For Each line As String In lines
		    
		    If lineIndex = currentLineIndex Or Not styleCurrentLineOnly Then
		      // work on current line only
		      
		      If line.Trim.BeginsWith("#") Then
		        
		        // comment
		        HighlightComments(tb, leftIndex, line)
		        
		      Else
		        
		        // sections
		        HighlightSections(tb, leftIndex, line)
		        
		        // keywords
		        HighlightKeywords(tb, leftIndex, line)
		        
		        // strings
		        HighlightStrings(tb, leftIndex, line)
		        
		      End
		      
		    End 
		    
		    // set leftIndex of next line
		    leftIndex = leftIndex + line.Length + EndOfLine.CR.Length
		    lineIndex = lineIndex + 1
		  Next
		  
		  System.DebugLog("leftIndex=" + Str(leftIndex) + ", total=" + Str(tb.Text.Length))
		  
		  RestoreCursorPos(tb)
		  
		  // set default style
		  tb.SelectionTextColor = Colors.TextForeground
		  tb.SelectionBold = False
		  tb.SelectionItalic = False
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InitKeywords()
		  Me.Keywords = kSyntax_Keywords.ReplaceLineEndings(EndOfLine).Split(EndOfLine)
		  Me.Sections = kSyntax_Sections.ReplaceLineEndings(EndOfLine).Split(EndOfLine)
		  Me.Params = kSyntax_Params.ReplaceLineEndings(EndOfLine).Split(EndOfLine)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RemoveStyles(tb as desktopTextArea)
		  SaveCursorPos(tb)
		  
		  // remove all styles when pasted from clicpboard
		  // just a dirty hack :-(
		  Var t As String = tb.Text
		  tb.Text = t
		  
		  RestoreCursorPos(tb)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub RestoreCursorPos(tb as DesktopTextArea)
		  // restores a previously saved cursor postion
		  If Self.TempCursorPos >= 0 Then
		    tb.SelectionStart = Self.TempCursorPos
		    tb.SelectionLength = 0
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SaveCursorPos(tb as DesktopTextArea)
		  // save current cursor position
		  Self.TempCursorPos = tb.SelectionStart
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub setAutomaticQuoteSubstitutionEnabled(t as DesktopTextArea, value as Boolean)
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
		  #ElseIf TargetWindows Then
		    tbExpertText.FontName = "Consolas"
		  #Else
		    tbExpertText.FontName = "Curier"
		  #EndIf
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Initialized()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event TextHasChanged()
	#tag EndHook


	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  If Color.IsDarkMode Then
			    Return &c80FF8000
			  Else
			    Return &c00800000
			  End
			End Get
		#tag EndGetter
		Private HighlightColor_Comment As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  If Color.IsDarkMode Then
			    Return &cD783FF
			  Else
			    Return &c80004000
			  End
			End Get
		#tag EndGetter
		Private HighlightColor_Keyword As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  If Color.IsDarkMode Then
			    Return &cFF00FF00
			  Else
			    Return &c6A00D500
			  End
			End Get
		#tag EndGetter
		Private HighlightColor_Section As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  If Color.IsDarkMode Then
			    Return &cA4F1FF00
			  Else
			    Return &c0080FF00
			  End
			End Get
		#tag EndGetter
		Private HighlightColor_String As Color
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private Keywords() As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Params() As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Sections() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TempCursorPos As Integer
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

	#tag Property, Flags = &h21
		Private WasKeyPress As Boolean
	#tag EndProperty


	#tag Constant, Name = kEditMenu_Copy, Type = String, Dynamic = True, Default = \"Copy", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Copy"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Kopieren"
	#tag EndConstant

	#tag Constant, Name = kEditMenu_Cut, Type = String, Dynamic = True, Default = \"Cut", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Cut"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ausschneiden"
	#tag EndConstant

	#tag Constant, Name = kEditMenu_Paste, Type = String, Dynamic = True, Default = \"Paste", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Paste"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Einf\xC3\xBCgen"
	#tag EndConstant

	#tag Constant, Name = kEditMenu_SelectAll, Type = String, Dynamic = True, Default = \"Select all", Scope = Private
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Select all"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Alles ausw\xC3\xA4hlen"
	#tag EndConstant

	#tag Constant, Name = kSyntax_Keywords, Type = String, Dynamic = False, Default = \"frameskip\naspect\nscaler\ncore\ncputype\ncycles\ncycleup\ncycledown\nmpu401\nmididevice\nmidiconfig\nfullscreen\nfulldouble\nfullresolution\nwindowresolution\noutput\nautolock\nsensitivity\nwaitonerror\npriority\nmapperfile\nusescancodes\nlanguage\nmemsize\nmachine\ncaptures\nserialX\nxms\nems\numb\nkeyboardlayout\nipx", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSyntax_Params, Type = String, Dynamic = False, Default = \"", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSyntax_Sections, Type = String, Dynamic = False, Default = \"[sdl]\n[dosbox]\n[render]\n[cpu]\n[mixer]\n[midi]\n[sblaster]\n[gus]\n[speaker]\n[joystick]\n[serial]\n[dos]\n[ipx]\n[autoexec]", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events tbExpertText
	#tag Event
		Sub TextChanged()
		  System.DebugLog("TextChanged")
		  
		  If Not WasKeyPress Then
		    RemoveStyles(Me)
		  End
		  
		  //HighlightSyntax(Me)
		  HighlightSyntaxLine(Me, WasKeyPress)
		  
		  RaiseEvent TextHasChanged
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  setAutomaticQuoteSubstitutionEnabled Me, False
		End Sub
	#tag EndEvent
	#tag Event
		Function KeyDown(key As String) As Boolean
		  System.DebugLog("KeyDown")
		  
		  Self.WasKeyPress = True
		  
		  Return False
		End Function
	#tag EndEvent
	#tag Event
		Sub KeyUp(key As String)
		  System.DebugLog("KeyUp")
		  
		  Self.WasKeyPress = False
		End Sub
	#tag EndEvent
	#tag Event
		Function ConstructContextualMenu(base As DesktopMenuItem, x As Integer, y As Integer) As Boolean
		  #If TargetWindows Then
		    base.AddMenu(New DesktopMenuItem(kEditMenu_Cut))
		    base.AddMenu(New DesktopMenuItem(kEditMenu_Copy))
		    base.AddMenu(New DesktopMenuItem(kEditMenu_Paste))
		    base.AddMenu(New DesktopMenuItem(DesktopMenuItem.TextSeparator))
		    base.AddMenu(New DesktopMenuItem(kEditMenu_SelectAll))
		    
		    base.MenuAt(0).Enabled = Me.SelectedText.Length > 0
		    base.MenuAt(1).Enabled = Me.SelectedText.Length > 0
		    
		    Var clip As New Clipboard
		    base.MenuAt(2).Enabled =clip.TextAvailable
		    clip.Close
		    
		  #EndIf
		  
		  Return True
		End Function
	#tag EndEvent
	#tag Event
		Function ContextualMenuItemSelected(selectedItem As DesktopMenuItem) As Boolean
		  Select Case selectedItem.Text
		    
		  Case kEditMenu_Cut
		    Me.Copy
		    Me.SelectedText = ""
		    
		  Case kEditMenu_Copy
		    Me.Copy
		    
		  Case kEditMenu_Paste
		    Me.Paste
		    
		  Case kEditMenu_SelectAll
		    Me.SelectAll
		    
		  End
		  
		  Return True
		End Function
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
