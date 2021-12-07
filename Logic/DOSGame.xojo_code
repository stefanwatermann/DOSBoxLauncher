#tag Class
Protected Class DOSGame
	#tag Method, Flags = &h0
		Shared Function ParseText(t as string) As DOSGame
		  Var game As DOSGame = New DOSGame
		  
		  For Each raw As String In t.Split(EndOfLine.Native)
		    
		    Var line As String = raw.Trim
		    
		    App.Log("...line: " + line)
		    
		    If line.Length > 0 And Not line.BeginsWith("#") Then
		      
		      Var elems() As String = line.Split("=")
		      
		      If elems.Count = 2 Then
		        Var key As String = elems(0).Trim.Lowercase
		        Var Val As String = elems(1).Trim
		        
		        If Val.Length > 0 Then
		          Select Case key
		            
		          Case "scaler"
		            game.Scaler = Val
		            
		          Case "fullscreen"
		            game.Fullscreen = Boolean.FromString(Val)
		            
		          Case "resolution"
		            game.Resolution = Val
		            
		          Case "machine"
		            game.MachineType = Val
		            
		          Case "folder_c"
		            game.FolderMountAsC = Val
		            
		          Case "mount_d_cdrom"
		            game.MountDAsCdrom = Boolean.FromString(Val)
		            
		          Case "folder_d"
		            game.FolderMountAsD = Val
		            
		          Case "startdrive"
		            game.StartDrive = Val
		            
		          Case "startfile"
		            game.StartFile = Val
		            
		          Case "name"
		            game.Name = Val
		            
		          Case "cycles"
		            game.CpuCycles = Val
		            
		          Case "laststartdt"
		            game.LastStartDt = DateTime.FromString(Val)
		            
		          Case "autoexit"
		            game.AutoExit = Boolean.FromString(Val)
		            
		          Case "expertmode"
		            game.ExpertMode = Boolean.FromString(Val)
		            
		          End
		          
		        End
		      End
		      
		    End
		    
		  Next
		  
		  Return game
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		AutoExit As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		CpuCycles As String = "auto"
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return me.Name.CreateSafeFilename + kDOSBoxSettingsFileExtension
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
			    Return "nie"
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

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return me.Name.CreateSafeFilename + kFileSettingsFileExtension
			End Get
		#tag EndGetter
		SettingsFilename As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Var lastdt As String
			  If Me.LastStartDt <> Nil Then
			    lastdt = Me.LastStartDt.SQLDateTime
			  End
			  
			  Return kFileSettingsFileTemplate._
			  Replace("#NAME#", Me.Name)._
			  Replace("#FULLSCREEN#", Me.Fullscreen.ToString)._
			  Replace("#RESOLUTION#", Me.Resolution)._
			  Replace("#MACHINE#", Me.MachineType)._
			  Replace("#SCALER#", Me.Scaler)._
			  Replace("#CYCLES#", Me.CpuCycles)._
			  Replace("#FOLDERC#", Me.FolderMountAsC)._
			  Replace("#FOLDERD#", Me.FolderMountAsD)._
			  Replace("#MOUNTDCDROM#", Str(Me.MountDAsCdrom))._
			  Replace("#STARTDRIVE#", Me.StartDrive)._
			  Replace("#STARTFILE#", Me.StartFile)._
			  Replace("#LASTSTARTDT#", lastdt)._
			  Replace("#AUTOEXIT#", Me.AutoExit.ToString)._
			  Replace("#EXPERTMODE#", Me.ExpertMode.ToString)._
			  ReplaceLineEndings(EndOfLine.Native)
			  
			  
			End Get
		#tag EndGetter
		SettingsText As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		StartDrive As String = "C:"
	#tag EndProperty

	#tag Property, Flags = &h0
		StartFile As String
	#tag EndProperty


	#tag Constant, Name = kDOSBoxSettingsFileExtension, Type = String, Dynamic = False, Default = \".conf", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kDOSBoxSettingsFileTemplate, Type = String, Dynamic = False, Default = \"[sdl]\nfullscreen\x3D#FULLSCREEN#\nfullresolution\x3D#RESOLUTION#\nwindowresolution\x3D#RESOLUTION#\n[cpu]\ncycles\x3D#CYCLES#\n[dosbox]\nmachine\x3D#MACHINE#\n[render]\nscaler\x3D#SCALER#\n[autoexec]\n#AUTOEXEC#", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kFileSettingsFileExtension, Type = String, Dynamic = False, Default = \".dosgame", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kFileSettingsFileTemplate, Type = String, Dynamic = False, Default = \"name\x3D#NAME#\nfullscreen\x3D#FULLSCREEN#\nresolution\x3D#RESOLUTION#\nmachine\x3D#MACHINE#\ncycles\x3D#CYCLES#\nscaler\x3D#SCALER#\nfolder_c\x3D#FOLDERC#\nfolder_d\x3D#FOLDERD#\nmount_d_cdrom\x3D#MOUNTDCDROM#\nstartdrive\x3D#STARTDRIVE#\nstartfile\x3D#STARTFILE#\nlaststartdt\x3D#LASTSTARTDT#\nautoexit\x3D#AUTOEXIT#\nexpertmode\x3D#EXPERTMODE#", Scope = Private
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
			Name="SettingsFilename"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="SettingsText"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
	#tag EndViewBehavior
End Class
#tag EndClass
