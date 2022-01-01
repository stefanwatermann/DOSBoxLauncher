#tag Module
Protected Module DOSBox
	#tag Method, Flags = &h0
		Function GetDOSBoxCommandLine(configPath as string, autoExit as Boolean) As String
		  Var cmd As String
		  
		  If DOSBoxExecutable.Length > 0 Then
		    cmd = """" + DOSBoxExecutable + kDefault_DOSBox_AppPathPartial + """"
		  End
		  
		  cmd = cmd + " -userconf -noconsole"
		  
		  If autoExit Then
		    cmd = cmd + " -exit"
		  End
		  
		  cmd = cmd + " -conf """ + configPath + """"
		  
		  Return cmd
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RunGame(configPath as string, autoExit as Boolean)
		  //Var cmd As String = kDefault_DOSBox_AppPath
		  //
		  //If DOSBoxExecutable.Length > 0 Then
		  //cmd = """" + DOSBoxExecutable + kDefault_DOSBox_AppPathPartial + """"
		  //End
		  //
		  //cmd = cmd + " -userconf -noconsole"
		  //
		  //If autoExit Then
		  //cmd = cmd + " -exit"
		  //End
		  //
		  //cmd = cmd + " -conf """ + configPath + """"
		  
		  var cmd as string = DosBox.GetDOSBoxCommandLine(configPath, autoExit)
		  app.Log("DOSBox cmd: " + cmd)
		  
		  Var sh As New shell
		  sh.TimeOut = -1
		  sh.Execute(cmd)
		  ExitCode = sh.ExitCode
		  
		  Result = sh.Result.Right(sh.result.Length - sh.result.IndexOf("DOSBox version"))
		  
		  sh.Close
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Var f As New FolderItem(mDOSBoxExecutable, FolderItem.PathModes.Native)
			  
			  If mDOSBoxExecutable.Length > 0 and f.Exists Then
			    Return mDOSBoxExecutable
			  Else
			    Return kDefault_DOSBox_Executable
			  End
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mDOSBoxExecutable = value
			End Set
		#tag EndSetter
		DOSBoxExecutable As string
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		ExitCode As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mDOSBoxExecutable As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Result As String
	#tag EndProperty


	#tag Constant, Name = kDefault_DOSBox_AppPathPartial, Type = String, Dynamic = False, Default = \"", Scope = Private
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"/Contents/MacOS/DOSBox"
	#tag EndConstant

	#tag Constant, Name = kDefault_DOSBox_Executable, Type = String, Dynamic = False, Default = \"", Scope = Private
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"C:\\Program Files (x86)\\DOSBox-0.74\\dosbox.exe"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"dosbox"
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"/Applications/dosbox.app"
	#tag EndConstant

	#tag Constant, Name = kDOSBoxInternetUrl, Type = String, Dynamic = False, Default = \"https://www.dosbox.com", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDOSBoxManualUrl, Type = String, Dynamic = False, Default = \"https://www.dosbox.com/DOSBoxManual.html", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDOSBoxWikiUrl, Type = String, Dynamic = False, Default = \"https://www.dosbox.com/wiki/Dosbox.conf", Scope = Public
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
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
