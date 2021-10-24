#tag Module
Protected Module DOSBox
	#tag Method, Flags = &h0
		Sub RunGame(configPath as string, autoExit as Boolean)
		  Var cmd As String = kDefault_DOSBox_AppPath
		  
		  If DOSBoxExecutable.Length > 0 Then
		    cmd = DOSBoxExecutable + kDefault_DOSBox_AppPathPartial
		  End
		  
		  cmd = cmd + " -userconf "
		  
		  If autoExit Then
		    cmd = cmd + " -exit"
		  End
		  
		  cmd = cmd + " -conf '" + configPath + "'"
		  
		  Var sh As New shell
		  sh.Execute(cmd)
		  ExitCode = sh.ExitCode
		  
		  Result = sh.Result.Right(sh.result.Length - sh.result.IndexOf("DOSBox version"))
		  
		  sh.Close
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		DOSBoxExecutable As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ExitCode As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Result As String
	#tag EndProperty


	#tag Constant, Name = kDefault_DOSBox_AppPath, Type = String, Dynamic = False, Default = \"", Scope = Private
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"/Applications/dosbox.app/Contents/MacOS/DOSBox"
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"c:\\DOSBox\\"
	#tag EndConstant

	#tag Constant, Name = kDefault_DOSBox_AppPathPartial, Type = String, Dynamic = False, Default = \"", Scope = Private
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"/Contents/MacOS/DOSBox"
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"c:\\DOSBox\\"
	#tag EndConstant

	#tag Constant, Name = kDOSBoxManualUrl, Type = String, Dynamic = False, Default = \"https://www.dosbox.com/DOSBoxManual.html", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDOSBoxWikiUrl, Type = String, Dynamic = False, Default = \"https://www.dosbox.com/wiki", Scope = Public
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
			Name="ExitCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Result"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DOSBoxExecutable"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
