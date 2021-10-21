#tag Module
 Attributes ( Version = 1.0, Copyright = "watermann-it.de" ) Protected Module UsageInfoClient
	#tag Method, Flags = &h0
		Function GetPlatform() As string
		  #If TargetMacOS Then
		    Return "MacOS"
		  #ElseIf TargetWindows Then
		    Return "Windows"
		  #ElseIf TargetLinux Then
		    Return "Linux"
		  #Else
		    Return "unknown"
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostJson2Service(url As string, data As String)
		  Try
		    Dim connection As New URLConnection
		    connection.SetRequestContent(data, "text/json")
		    connection.RequestHeader("User-Agent") = kUserAgent
		    connection.Send("POST", url)
		  Catch e As RuntimeException
		    System.DebugLog("Error sending UsageInfo: " + e.Message)
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub PostUsageInfo(info as string, appId as string, instId as string)
		  Var data As String = kPostUsageInfoTemplate. _
		  Replace("{data}", EncodeBase64(info, 0)). _
		  Replace("{appid}", appId). _
		  Replace("{instid}", instId). _
		  Replace("{appversion}", AppVersion). _
		  Replace("{os}", GetPlatform)
		  
		  PostJson2Service(kUrlPostUsage, data)
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Var v As String = _
			  Str(app.MajorVersion) + "." + _
			  Str(app.MinorVersion) + "." + _
			  Str(app.BugVersion) + "." + _
			  Str(app.NonReleaseVersion)
			  
			  Return v
			End Get
		#tag EndGetter
		AppVersion As string
	#tag EndComputedProperty


	#tag Constant, Name = kPostUsageInfoTemplate, Type = String, Dynamic = False, Default = \"{ \n    \"appid\": \"{appid}\"\x2C\n    \"instid\": \"{instid}\"\x2C\n    \"appversion\": \"{appversion}\"\x2C\n    \"os\": \"{os}\"\x2C\n    \"data\": \"{data}\"\n}", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kUrlPostError, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"https://www.watermann-it.de/ws/errorreceiver.php"
	#tag EndConstant

	#tag Constant, Name = kUrlPostUsage, Type = String, Dynamic = True, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"https://www.watermann-it.de/ws/usagereceiver.php"
	#tag EndConstant

	#tag Constant, Name = kUserAgent, Type = String, Dynamic = False, Default = \"", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Watermann-IT-UsageInfo-Client"
	#tag EndConstant


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
			Name="AppVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
