#tag Class
Protected Class DOSGame
	#tag Method, Flags = &h0
		Sub Constructor()
		  me.Guid = StringUtils.NewGuid
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		AutoExit As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		CpuCycles As String = "auto"
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If Guid.Length = 0 Then
			    Return Me.Name.CreateSafeFilename + kDOSBoxSettingsFileExtension
			  Else
			    Return Me.Guid + kDOSBoxSettingsFileExtension
			  End
			End Get
		#tag EndGetter
		DOSBoxSettingsFilename As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Var autoexec As String
			  
			  If Me.FolderMountAsC.Length > 0 Then
			    autoexec = "mount c """ + Me.FolderMountAsC + """" + EndOfLine
			  End
			  
			  If Me.FolderMountAsD.Length > 0 Then
			    autoexec = autoexec +  "mount d """ + Me.FolderMountAsD + """"
			    If Me.MountDAsCdrom Then
			      autoexec = autoexec + " -t cdrom"
			    End
			    autoexec = autoexec + EndOfLine
			  End
			  
			  If Me.StartFile.Length > 0 Then
			    autoexec = autoexec + me.StartDrive + EndOfLine + me.StartFile + EndOfLine
			  End
			  
			  If Me.AutoExit Then
			    autoexec = autoexec + "exit" + EndOfLine
			  End
			  
			  Return kDOSBoxSettingsFileTemplate._
			  Replace("#FULLSCREEN#", Me.Fullscreen.ToString.Lowercase)._
			  ReplaceAll("#RESOLUTION#", Me.Resolution)._
			  Replace("#MACHINE#", Me.MachineType)._
			  Replace("#SCALER#", Me.Scaler)._
			  Replace("#CYCLES#", Me.CpuCycles)._
			  Replace("#AUTOEXEC#", autoexec)._
			  ReplaceLineEndings(EndOfLine.Native)
			  
			End Get
		#tag EndGetter
		DOSBoxSettingsText As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		DOSBoxSettingsTextExpert As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ExpertMode As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		FolderMountAsC As String
	#tag EndProperty

	#tag Property, Flags = &h0
		FolderMountAsD As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Fullscreen As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Guid As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Id As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LastStartDt As DateTime
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If Me.LastStartDt = Nil Then
			    Return ""
			  Else
			    Return Me.LastStartDt.SQLDateTime
			  End
			End Get
		#tag EndGetter
		LastStartDtSqlText As string
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If Me.LastStartDt = Nil Then
			    Return kLastStartDtNever
			  Else
			    return me.LastStartDt.ToString
			  End
			End Get
		#tag EndGetter
		LastStartDtText As string
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		MachineType As String = "svga_s3"
	#tag EndProperty

	#tag Property, Flags = &h0
		MountDAsCdrom As Boolean = false
	#tag EndProperty

	#tag Property, Flags = &h0
		Name As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Resolution As String = "Standard"
	#tag EndProperty

	#tag Property, Flags = &h0
		Scaler As String = "normal2x"
	#tag EndProperty

	#tag Property, Flags = &h0
		SecondsPlayed As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		StartDrive As String = "C:"
	#tag EndProperty

	#tag Property, Flags = &h0
		StartFile As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Var total As Integer = Self.SecondsPlayed
			  Var seconds As Integer = total Mod 60
			  Var minutes As Integer = (total / 60) Mod 60
			  Var hours As Integer = total / 3600
			  
			  If total = 0 Then Return "-"
			  
			  If total < 60 Then Return kTotalTime_LeesThanAMinute
			  
			  If total > 59 And hours = 0 And minutes = 1 Then Return kTotalTime_OneMinute
			  
			  If total > 59 And hours = 0 And minutes > 1 Then Return kTotalTime_Minutes.Format2(minutes)
			  
			  If total > 59 And hours = 1 Then Return kTotalTime_OneHourAnd.Format2(minutes)
			  
			  If total > 59 And hours > 1 Then Return kTotalTime_HoursAndMinutes.Format2(hours, minutes)
			  
			  Return Str(hours, "00") + ":" + Str(minutes, "00") + ":" + Str(seconds, "00")
			End Get
		#tag EndGetter
		TotalTimePlayedFormatted As string
	#tag EndComputedProperty


	#tag Constant, Name = kDOSBoxSettingsFileExtension, Type = String, Dynamic = False, Default = \".conf", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDOSBoxSettingsFileTemplate, Type = String, Dynamic = False, Default = \"[sdl]\nfullscreen\x3D#FULLSCREEN#\nfullresolution\x3D#RESOLUTION#\nwindowresolution\x3D#RESOLUTION#\n[cpu]\ncycles\x3D#CYCLES#\n[dosbox]\nmachine\x3D#MACHINE#\n[render]\nscaler\x3D#SCALER#\n[autoexec]\n#AUTOEXEC#", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kLastStartDtNever, Type = String, Dynamic = True, Default = \"never", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"never"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"nie"
	#tag EndConstant

	#tag Constant, Name = kTotalTime_HoursAndMinutes, Type = String, Dynamic = True, Default = \"{d} hours and {d} minutes", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"{0} hours and {1} minutes"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"{0} Stunden und {1} Minuten"
	#tag EndConstant

	#tag Constant, Name = kTotalTime_LeesThanAMinute, Type = String, Dynamic = True, Default = \"less than a minute", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"less than a minute"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"weniger als eine Minute"
	#tag EndConstant

	#tag Constant, Name = kTotalTime_Minutes, Type = String, Dynamic = True, Default = \"{d} minutes", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"{0} minutes"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"{0} Minuten"
	#tag EndConstant

	#tag Constant, Name = kTotalTime_OneHourAnd, Type = String, Dynamic = True, Default = \"one hour and {d} minutes", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"one hour and {0} minutes"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"eine Stunde und {0} Minuten"
	#tag EndConstant

	#tag Constant, Name = kTotalTime_OneMinute, Type = String, Dynamic = True, Default = \"one minute", Scope = Private
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"one minute"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"eine Minute"
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
			Name="FolderMountAsC"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FolderMountAsD"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MountDAsCdrom"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MachineType"
			Visible=false
			Group="Behavior"
			InitialValue="svga_s3"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Scaler"
			Visible=false
			Group="Behavior"
			InitialValue="normal2x"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Resolution"
			Visible=false
			Group="Behavior"
			InitialValue="640x480"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Fullscreen"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StartFile"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DOSBoxSettingsText"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StartDrive"
			Visible=false
			Group="Behavior"
			InitialValue="C:"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DOSBoxSettingsFilename"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CpuCycles"
			Visible=false
			Group="Behavior"
			InitialValue="auto"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastStartDtText"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastStartDtSqlText"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoExit"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExpertMode"
			Visible=false
			Group="Behavior"
			InitialValue="false"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DOSBoxSettingsTextExpert"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Id"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Guid"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SecondsPlayed"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TotalTimePlayedFormatted"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
