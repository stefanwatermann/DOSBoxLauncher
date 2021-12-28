#tag Class
Private Class GtkWidgetHeightFixHandlerClass
	#tag Method, Flags = &h0
		Sub constructor()
		  
		  #if TargetLinux
		    
		    declare function g_signal_add_emission_hook lib "libgobject-2" (id as uint32,detail as int32,hook as ptr, notify as ptr) as uint32
		    declare function g_signal_lookup lib "libgobject-2" (   name as CString, type as uint32)  as uint32
		    Declare Function gtk_widget_get_type Lib "libgtk-3" () As uint32
		    Declare Function gtk_button_get_type Lib "libgtk-3" () As uint32
		    
		    WidgetMap=new Dictionary //to store references to mapped controls
		    
		    dim type as uint32=gtk_widget_get_type
		    GtkWidgetMapCallBackID=g_signal_add_emission_hook(g_signal_lookup("map",type),0,AddressOf GtkWidgetMapCallback,nil)
		    GtkWidgetUnmapCallBackID=g_signal_add_emission_hook(g_signal_lookup("unmap",type),0,AddressOf GtkWidgetUnmapCallback,nil)
		    GtkWidgetStyleCallBackID=g_signal_add_emission_hook(g_signal_lookup("style-updated",type),0,AddressOf GtkWidgetHeightFixCallback,nil)
		    
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub destructor()
		  #if TargetLinux
		    
		    declare sub g_signal_remove_emission_hook lib "libgobject-2" (id as uint32,detail as int32) 
		    declare function g_signal_lookup lib "libgobject-2" (   name as CString, type as uint32)  as uint32
		    Declare Function gtk_button_get_type Lib "libgtk-3" () As uint32
		    
		    dim type as uint32=gtk_button_get_type
		    g_signal_remove_emission_hook(g_signal_lookup("map",type),GtkWidgetMapCallBackID)
		    g_signal_remove_emission_hook(g_signal_lookup("unmap",type),GtkWidgetUnmapCallBackID)
		    g_signal_remove_emission_hook(g_signal_lookup("style-updated",type),GtkWidgetStyleCallBackID)
		    
		  #endif
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function GetContainerControl(c as Control) As ContainerControl
		  if not c isa EmbeddedWindowControl then
		    Return nil
		  else
		    if ContainerRefs=nil then ContainerRefs=new Dictionary //where we store refs to the containers
		    
		    //first we'll dump any with a dead weakref to avoid possible use of a wrong object
		    //What are the odds of a reused handle? Best not to find out...
		    
		    //we store them by handle. If we have a match, skip the introspection.
		    if not ContainerRefs.HasKey(c.handle) then
		      ContainerRefs=new Dictionary//start fresh
		      //loop through the objects and find containers
		      dim myObjectIterator as Runtime.ObjectIterator= Runtime.IterateObjects
		      while myObjectIterator.MoveNext
		        dim curr As object=myObjectIterator.Current
		        if curr isA ContainerControl then
		          //store a weakref in the dictionary only if the control is open
		          if ContainerControl(curr).Handle>0 then ContainerRefs.Value(ContainerControl(curr).Handle)=new weakref(ContainerControl(curr))
		        end if
		      wend
		    end if
		    
		    //if we find a match and it is valid, we send it back as a ContainerControl
		    if ContainerRefs.HasKey(c.handle) then Return ContainerControl(weakref(ContainerRefs.Value(c.handle)).Value)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function getControlForHandle(handletofind As ptr) As RectControl
		  #if TargetLinux
		    If handleToFind = nil Then
		      Return Nil
		    End If
		    
		    for i as integer=0 to WindowCount-1
		      dim r As RectControl=SearchControlByHandle(handletofind,window(i))
		      if r<>nil then Return r
		    next
		    
		    Return Nil
		  #else
		    #Pragma Unused handletofind
		  #endif
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function GtkWidgetHeightFixCallback(hint as ptr, count as uint32, params as ptr, data as ptr) As Boolean
		  #If TargetLinux
		    
		    declare function g_value_get_object lib "libgtk-3" ( cls as ptr)as ptr
		    Declare sub gtk_widget_get_preferred_height Lib "libgtk-3" (obj as ptr,byref minh as int32, byref nath as int32 ) 
		    
		    dim widget as ptr=g_value_get_object(params)
		    
		    if not WidgetMap.HasKey(widget) then Return true
		    
		    dim minh,nath as int32
		    
		    dim r as RectControl=getControlForHandle(widget)
		    if r<>nil then 
		      gtk_widget_get_preferred_height(widget,minh,nath)
		      r.Height=max(r.Height,nath)
		    end if
		    Return true
		  #Else
		    #Pragma unused data
		    #Pragma unused params
		    #Pragma unused count
		    #Pragma unused hint
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function GtkWidgetMapCallback(hint as ptr, count as uint32, params as ptr, data as ptr) As Boolean
		  #If TargetLinux
		    
		    declare function g_value_get_object lib "libgtk-3" ( cls as ptr)as ptr
		    
		    dim widget as ptr=g_value_get_object(params)
		    WidgetMap.Value(widget)=true
		    
		    Return true
		  #Else
		    #Pragma unused data
		    #Pragma unused params
		    #Pragma unused count
		    #Pragma unused hint
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function GtkWidgetUnmapCallback(hint as ptr, count as uint32, params as ptr, data as ptr) As Boolean
		  #If TargetLinux
		    
		    declare function g_value_get_object lib "libgtk-3" ( cls as ptr)as ptr
		    
		    dim widget as ptr=g_value_get_object(params)
		    if WidgetMap.HasKey(widget) then WidgetMap.Remove(widget)
		    
		    Return true
		    
		  #Else
		    #Pragma unused data
		    #Pragma unused params
		    #Pragma unused count
		    #Pragma unused hint
		  #EndIf
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Shared Function SearchControlByHandle(handle as ptr, win as window) As RectControl
		  for r as integer=0 to win.ControlCount-1
		    dim c as control=win.control(r)
		    if c isa RectControl and ptr(c.Handle)=handle then Return RectControl(c)
		    if c isa EmbeddedWindowControl then 
		      dim cc As ContainerControl=getContainerControl(c)
		      if cc<>nil then
		        dim c1 As RectControl=SearchControlByHandle(handle,window(cc))
		        if c1<>nil then Return c1
		      end if
		    end if
		  next
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Shared ContainerRefs As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private GtkWidgetMapCallBackID As uint32
	#tag EndProperty

	#tag Property, Flags = &h21
		Private GtkWidgetStyleCallBackID As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private GtkWidgetUnmapCallBackID As uint32
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Shared WidgetMap As Dictionary
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
