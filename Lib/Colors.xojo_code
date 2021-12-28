#tag Module
 Attributes ( Version = 1.0, Copyright = "watermann-it.de" ) Protected Module Colors
	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If DarkMode Then
			    Return &c33333300
			  Else
			    Return FillColor
			  End
			End Get
		#tag EndGetter
		ControlBackground As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If DarkMode Then
			    Return &c37373700
			  Else
			    #If TargetWindows
			      Return &cCCCCCC00
			    #Else
			      Return &cCCCCCC00
			    #EndIf
			  End
			End Get
		#tag EndGetter
		ControlDisabled As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If DarkMode Then
			    Return &c41414100
			  Else
			    #If TargetWindows
			      Return &c85858500
			    #Else
			      Return &cB3B3B300
			    #EndIf
			  End
			End Get
		#tag EndGetter
		ControlFrame As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If DarkMode Then
			    Return &c29292900
			  Else
			    #If TargetMacOS
			      Return &cF0F0F200
			    #Else
			      Return &cFeFeFF00
			    #EndIf
			  End
			End Get
		#tag EndGetter
		ControlLightBackground As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  #If TargetMacOS Then
			    Return Color.IsDarkMode
			    //#ElseIf TargetWindows
			    //Var reg As New RegistryItem("HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize", False)
			    //Var v As Variant = reg.Value("AppsUseLightTheme")
			    //Return Not v.BooleanValue
			  #Else
			    //System.EnvironmentVariable("XOJO_WIN32_DARKMODE_DISABLED") = True
			    Return Color.IsDarkMode
			  #EndIf
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  zDarkMode = value
			End Set
		#tag EndSetter
		DarkMode As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If DarkMode Then
			    Return &c073F8000
			  Else
			    #If TargetWindows
			      Return &cC4DCF400
			    #Else
			      Return &c93B5E600
			    #EndIf
			  End
			  
			End Get
		#tag EndGetter
		Highlight As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If DarkMode Then
			    Return &c1D1D1D00
			  Else
			    Return color.White
			  End
			End Get
		#tag EndGetter
		ListRow As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If DarkMode Then
			    Return &c24242400
			  Else
			    Return &cF3F4F400
			  End
			End Get
		#tag EndGetter
		ListRowAlternative As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If DarkMode Then
			    Return &c83BEFE00
			  Else
			    Return &c1D4E8000
			  End
			End Get
		#tag EndGetter
		TextAlternative As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If DarkMode Then
			    Return &c2D2D2D00
			  Else
			    Return &cF6F6F600
			  End
			  
			End Get
		#tag EndGetter
		TextBackgoundDisabled As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If DarkMode Then
			    Return &c36363600
			  Else
			    Return &cFFFEFE00
			  End
			End Get
		#tag EndGetter
		TextBackground As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If DarkMode Then
			    Return &cE6E6E600
			  Else
			    Return TextColor
			  End
			End Get
		#tag EndGetter
		TextForeground As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If DarkMode Then
			    Return &cA9A9A900
			  Else
			    Return &c67676700
			  End
			End Get
		#tag EndGetter
		TextForegroundDisabled As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If DarkMode Then
			    Return &cE6E6E600
			  Else
			    Return Color.White
			  End
			End Get
		#tag EndGetter
		TextForegroundSelected As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If DarkMode Then
			    Return &c99999900
			  Else
			    Return &c4C4C4C00
			  End
			End Get
		#tag EndGetter
		TextHeader As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return &c073F8000
			  
			End Get
		#tag EndGetter
		TextHyperlink As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If DarkMode Then
			    Return &cFC666500
			  Else
			    Return &c80000200
			  End
			End Get
		#tag EndGetter
		TextWarning As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If DarkMode Then
			    Return &c33333300
			  Else
			    Return &cF5F6F700 // FillColor
			  End
			End Get
		#tag EndGetter
		WindowBackground As Color
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private zDarkMode As Boolean = false
	#tag EndProperty


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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
			Name="ControlBackground"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlFrame"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DarkMode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Highlight"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextAlternative"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextBackground"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextForeground"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="WindowBackground"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextHyperlink"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextBackgoundDisabled"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ListRow"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ListRowAlternative"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlDisabled"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ControlLightBackground"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextForegroundDisabled"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextHeader"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextWarning"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextForegroundSelected"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
