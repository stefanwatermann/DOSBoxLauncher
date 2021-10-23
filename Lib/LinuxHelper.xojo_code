#tag Module
 Attributes ( Version = 1.0, Copyright = "2021 - watermann-it.de" ) Protected Module LinuxHelper
	#tag Method, Flags = &h0
		Sub FixLargeToolbarButtons(t as Toolbar)
		  
		  // To be called from the "Toolbar.Open" event-handler
		  // https://forum.xojo.com/t/getting-huge-icons-in-toolbar-on-windows-how-to-fix/40342/15
		  
		  
		  #If TargetLinux Then 
		    #If (RBVersion >= 2017.02) Then 
		      'GTK3 
		      Soft Declare Sub gtk_toolbar_set_style Lib "libgtk-3" (handle As Integer, iStyle As Integer) 
		      If (Not System.IsFunctionAvailable("gtk_toolbar_set_style", "libgtk-3")) Then Return 
		    #Else 
		      'GTK2 
		      Soft Declare Sub gtk_toolbar_set_style Lib "libgtk-x11" (handle As Integer, iStyle As Integer) 
		      If (Not System.IsFunctionAvailable("gtk_toolbar_set_style", "libgtk-x11")) Then Return 
		    #EndIf 
		    
		    Try 
		      Const GTK_TOOLBAR_ICONS = 0 'Buttons display only icons in the toolbar. 
		      Const GTK_TOOLBAR_TEXT = 1 'Buttons display only text labels in the toolbar. 
		      Const GTK_TOOLBAR_BOTH = 2 'Buttons display text and icons in the toolbar. 
		      Const GTK_TOOLBAR_BOTH_HORIZ = 3 'Buttons display icons and text alongside each other, rather than vertically stacked 
		      gtk_toolbar_set_style(t.Handle, GTK_TOOLBAR_BOTH) 
		    Catch err As FunctionNotFoundException 
		      'ignore 
		    end try 
		  #EndIf
		End Sub
	#tag EndMethod


	#tag Note, Name = Readme
		Die Linux Unterstützung ist noch experimentell und nicht getestet!
		
	#tag EndNote


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
	#tag EndViewBehavior
End Module
#tag EndModule