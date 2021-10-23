#tag Class
Protected Class App
Inherits Application
	#tag Event
		Sub Open()
		  AllowAutoQuit = True
		  
		  AppConfig = New Config
		  
		  If AppConfig.GetConfigFile.Exists Then
		    AppConfig.Load
		  Else
		    Var f1 As FolderItem = SpecialFolder.UserHome.Child("DOS Games")
		    If f1 <> Nil Then
		      AppConfig.DOSGamesRootFolder = f1.NativePath
		    End
		    
		    Var f2 As FolderItem = SpecialFolder.Applications.Child("DOSBox.app")
		    If f2 <> Nil Then
		      AppConfig.DOSBoxExecutable = f2.NativePath
		    End
		  End
		  
		  If AppConfig.InstId.Length = 0 Then
		    AppConfig.InstId = StringUtils.NewGuid
		    AppConfig.Save
		  End
		  
		  SendStats("AppStart")
		End Sub
	#tag EndEvent

	#tag Event
		Function UnhandledException(error As RuntimeException) As Boolean
		  Var dlg As New ErrorReporterMessage(error)
		  dlg.ShowModal
		  Return True
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub SendStats(data as string)
		  If AppConfig.SendStats Then
		    UsageInfoClient.PostUsageInfo(data, AppId, AppConfig.InstId)
		  End
		End Sub
	#tag EndMethod


	#tag Note, Name = Copyright & Licence
		Copyright (c) 2021, Stefan Watermann, Germany.
		
		Diese Software unterligt der MIT Lizenz (https://de.wikipedia.org/wiki/MIT-Lizenz)
		
		Jedem, der eine Kopie dieser Software und der zugehörigen Dokumentationsdateien 
		(die "Software") erhält, wird hiermit kostenlos die Erlaubnis erteilt, ohne 
		Einschränkung mit der Software zu handeln, einschließlich und ohne Einschränkung 
		der Rechte zur Nutzung, zum Kopieren, Ändern, Zusammenführen, Veröffentlichen, 
		Verteilen, Unterlizenzieren und/oder Verkaufen von Kopien der Software, und 
		Personen, denen die Software zur Verfügung gestellt wird, dies unter den folgenden 
		Bedingungen zu gestatten:
		
		Der obige Urheberrechtshinweis und dieser Genehmigungshinweis müssen in allen 
		Kopien oder wesentlichen Teilen der Software enthalten sein.
		
		DIE SOFTWARE WIRD OHNE MÄNGELGEWÄHR UND OHNE JEGLICHE AUSDRÜCKLICHE ODER 
		STILLSCHWEIGENDE GEWÄHRLEISTUNG, EINSCHLIEßLICH, ABER NICHT BESCHRÄNKT AUF 
		DIE GEWÄHRLEISTUNG DER MARKTGÄNGIGKEIT, DER EIGNUNG FÜR EINEN BESTIMMTEN 
		ZWECK UND DER NICHTVERLETZUNG VON RECHTEN DRITTER, ZUR VERFÜGUNG GESTELLT. 
		DIE AUTOREN ODER URHEBERRECHTSINHABER SIND IN KEINEM FALL HAFTBAR FÜR ANSPRÜCHE, 
		SCHÄDEN ODER ANDERE VERPFLICHTUNGEN, OB IN EINER VERTRAGS- ODER HAFTUNGSKLAGE, 
		EINER UNERLAUBTEN HANDLUNG ODER ANDERWEITIG, DIE SICH AUS, AUS ODER IN VERBINDUNG 
		MIT DER SOFTWARE ODER DER NUTZUNG ODER ANDEREN GESCHÄFTEN MIT DER SOFTWARE ERGEBEN.
		
		
	#tag EndNote

	#tag Note, Name = DOSBox
		Die Anwendung DOSBox kein NICHT Bestandteil dieser App 
		und muss separat installiert werden.
		
		https://www.dosbox.com
		
		https://www.dosbox.com/wiki/Usage
		
	#tag EndNote


	#tag Property, Flags = &h0
		AppConfig As Config
	#tag EndProperty

	#tag Property, Flags = &h0
		AppId As String = "c494b992-dc22-4056-b25e-b78fb255da95"
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return str(app.MajorVersion) + "." + str(app.MinorVersion) + "." + str(app.BugVersion) + "." + str(app.NonReleaseVersion)
			End Get
		#tag EndGetter
		LongVersion As string
	#tag EndComputedProperty


	#tag Constant, Name = kEditClear, Type = String, Dynamic = False, Default = \"&Delete", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"&Delete"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"&Delete"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = False, Default = \"&Quit", Scope = Public
		#Tag Instance, Platform = Windows, Language = Default, Definition  = \"E&xit"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="LongVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AppId"
			Visible=false
			Group="Behavior"
			InitialValue="c494b992-dc22-4056-b25e-b78fb255da95"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass