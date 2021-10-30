#tag Module
 Attributes ( Version = 1.0, Copyright = "watermann-it.de" ) Protected Module File
	#tag Method, Flags = &h0
		Sub AppendText(f as FolderItem, data as string)
		  WriteAllText(f, data, Encodings.UTF8, true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendText(f as FolderItem, data as string, enc as TextEncoding)
		  WriteAllText(f, data, enc, true)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AppendText(filePath as string, data as string)
		  Var f As FolderItem = New FolderItem(filePath, Folderitem.PathModes.Native)
		  WriteAllText(f, data, Encodings.UTF8, True)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Delete(filePath as string)
		  Var f As FolderItem = New FolderItem(filePath, Folderitem.PathModes.Native)
		  f.Remove
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub MoveToTrash(extends f as FolderItem)
		  Var trashItem As FolderItem = SpecialFolder.Trash.Child(f.Name)
		  
		  If trashItem <> Nil Then
		    If trashItem.Exists Then
		      If trashItem.IsFolder Then
		        call RemoveEntireFolder(trashItem)
		      Else
		        trashItem.Remove
		      End
		    End
		  End
		  
		  f.MoveTo(SpecialFolder.Trash)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 526561647320616C6C207465787420646174612066726F6D2061205554463820656E636F6465642066696C65
		Function ReadAllText(f as FolderItem) As string
		  Return ReadAllText(f, Encodings.UTF8)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadAllText(f as FolderItem, enc as TextEncoding) As string
		  If enc = Nil Then
		    enc = encodings.UTF8
		  End
		  
		  Var data As String
		  
		  Var t As TextInputStream = TextInputStream.Open(f)
		  t.Encoding = enc
		  data = t.ReadAll
		  t.Close
		  
		  Return data
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ReadAllText(filePath as string) As string
		  Var f As FolderItem = New FolderItem(filePath, Folderitem.PathModes.Native)
		  Return ReadAllText(f)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function RemoveEntireFolder(theFolder As FolderItem, continueIfErrors As Boolean = False) As Integer
		  // Returns an error code if it fails, or zero if the folder was removed successfully
		  
		  Var returnCode, lastError As Integer
		  Var files(), folders() As FolderItem
		  
		  If theFolder = Nil Or Not theFolder.Exists Then
		    Return 0
		  End If
		  
		  // Collect the folder‘s contents first.
		  // This is faster than collecting them in reverse order and removing them right away!
		  For Each item As FolderItem In theFolder.Children
		    If item.Exists Then
		      If item.IsFolder Then
		        folders.AddRow(item)
		      Else
		        files.AddRow(item)
		      End If
		    End If
		  Next
		  
		  // Now remove the files
		  For Each file As FolderItem In files
		    Try
		      file.Remove
		    Catch error As IOException
		      If error.ErrorNumber <> 0 Then
		        If continueIfErrors Then
		          If returnCode = 0 Then returnCode = lastError
		        Else
		          // Return the error code if any. This will cancel the deletion.
		          Return lastError
		        End If
		      End If
		    End Try
		  Next
		  
		  files.RemoveAll // free the memory used by the files array before we enter recursion
		  
		  // Now remove the folders
		  For Each f As FolderItem In folders
		    lastError = RemoveEntireFolder(f, continueIfErrors)
		    If lastError <> 0 Then
		      If continueIfErrors Then
		        If returnCode = 0 Then returnCode = lastError
		      Else
		        // Return the error code if any. This will cancel the removal.
		        Return lastError
		      End If
		    End If
		  Next
		  
		  If returnCode = 0 Then
		    // We‘re done without error, so the folder should be empty and we can remove it.
		    Try
		      theFolder.Remove
		    Catch error As IOException
		      returnCode = error.ErrorNumber
		    End Try
		  End If
		  
		  Return returnCode
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0, Description = 777269746520616C6C207465787420746F2066696C65207573696E67205554463820656E636F64696E67
		Sub WriteAllText(f as folderitem, data as string)
		  WriteAllText(f, data, Encodings.UTF8)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteAllText(f as folderitem, data as string, enc as TextEncoding, append as Boolean = false)
		  If enc = Nil Then
		    enc = encodings.UTF8
		  End
		  
		  Var t As TextOutputStream 
		  
		  If append Then
		    t = TextOutputStream.Open(f)
		  Else
		    t = TextOutputStream.Create(f)
		  End
		  
		  t.Encoding = enc
		  t.Write(data)
		  t.Close
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub WriteAllText(filePath as string, data as string)
		  Var f As FolderItem = New FolderItem(filePath, Folderitem.PathModes.Native)
		  WriteAllText(f, data)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function WriteTemp(data as string) As FolderItem
		  Var f As FolderItem = FolderItem.TemporaryFile
		  WriteAllText(f, data)
		  return f
		End Function
	#tag EndMethod


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
