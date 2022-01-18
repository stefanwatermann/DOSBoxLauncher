#tag Class
Protected Class App
Inherits DesktopApplication
	#tag Event
		Sub Opening()
		  AllowAutoQuit = True
		  
		  #If TargetLinux Then
		    modGTK3.initGtkEntryFix
		    modGTK3.initGtkWidgetHeightFix
		    modGTK3.InitGlobalGTK3Style
		  #EndIf
		  
		  AppConfig = New Config
		  
		  Log("AppConfig initializing...")
		  
		  If AppConfig.GetConfigFile <> Nil And AppConfig.GetConfigFile.Exists Then
		    Log("AppConfig found, now loading config.")
		    AppConfig.Load
		  Else
		    Log("App config NOT found, using defaults.")
		  End
		  
		  Log("DOSGamesRootFolder = " + AppConfig.DOSGamesRootFolder )
		  Log("DOSBoxExecutable = " + AppConfig.DOSBoxExecutable)
		  
		  If AppConfig.InstId.Length = 0 Then
		    Log("No InstId found, creating new one.")
		    AppConfig.InstId = StringUtils.NewGuid
		    AppConfig.Save
		  End
		  
		  SendStats("AppStart")
		  
		  Log("App initialized successfully.")
		  
		  
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
		Sub Log(msg as string)
		  System.DebugLog("DOSBoxLauncher: " + msg)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SendStats(data as string, sendAnyway as Boolean = false)
		  If AppConfig.SendStats Or sendAnyway Then
		    UsageInfoClient.PostUsageInfo(data, AppId, AppConfig.InstId)
		  End
		End Sub
	#tag EndMethod


	#tag Note, Name = ChangeHistrory
		v1.2.2
		------
		- select game folder respects already available folder
		- last selected game restored when add/edit/run game
		
		v1.2.1
		------
		- Configured Game basefolder respected when selecting folders in simple mode.
		- Oneway sync from SimpleMode to ExpertMode.
	#tag EndNote

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
		
		-------------------------------------------------------
		
		Copyright (c) 2021, Stefan Watermann, Germany.
		
		This software is published under the MIT license (https://de.wikipedia.org/wiki/MIT-Lizenz)
		
		Permission is hereby granted, free of charge, to any person obtaining a copy of 
		this software and associated documentation files (the "Software"), to deal in the 
		Software without restriction, including without limitation the rights to use, copy, 
		modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, 
		and to permit persons to whom the Software is furnished to do so, subject to the 
		following conditions:
		
		The above copyright notice and this permission notice shall be included in all copies 
		or substantial portions of the Software.
		
		THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
		INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
		PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT 
		HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION 
		OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
		SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
		
	#tag EndNote

	#tag Note, Name = DOSBox
		Die Anwendung DOSBox ist NICHT Bestandteil dieser App 
		und muss separat installiert werden.
		
		--------------------------------------
		
		This application does NOT have DOSBox included, please 
		download separately.
		
		
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

	#tag Constant, Name = kFileMenu, Type = String, Dynamic = True, Default = \"&File", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"&File"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"&Datei"
	#tag EndConstant

	#tag Constant, Name = kFileQuit, Type = String, Dynamic = True, Default = \"&Exit", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"E&xit"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Beenden"
	#tag EndConstant

	#tag Constant, Name = kFileQuitShortcut, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"Cmd+Q"
		#Tag Instance, Platform = Linux, Language = Default, Definition  = \"Ctrl+Q"
	#tag EndConstant

	#tag Constant, Name = kMainMenu_FileAbout_Text, Type = String, Dynamic = True, Default = \"About DOSBox Launcher...", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"About DOSBox Launcher..."
		#Tag Instance, Platform = Any, Language = de, Definition  = \"\xC3\x9Cber DOSBox Launcher\xE2\x80\xA6"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=false
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=false
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowAutoQuit"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowHiDPI"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BugVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Copyright"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Description"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LastWindowIndex"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MajorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="MinorVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NonReleaseVersion"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RegionCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="StageCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Version"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_CurrentEventTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
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
