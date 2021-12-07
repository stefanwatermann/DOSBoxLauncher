#tag Class
Protected Class DataStoreResult
	#tag Method, Flags = &h0
		Shared Function Failed(ex as RuntimeException) As DataStoreResult
		  Var result As New DataStoreResult
		  result.Games = Nil
		  result.Status = DataStoreResultStatus.failed
		  result.Message = ex.Message
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Failed(err as string) As DataStoreResult
		  Var result As New DataStoreResult
		  result.Games = Nil
		  result.Status = DataStoreResultStatus.failed
		  result.Message = err
		  Return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Success() As DataStoreResult
		  Var result As New DataStoreResult
		  result.Games = Nil
		  result.Status = DataStoreResultStatus.success
		  result.Message = ""
		  return result
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function Success(games() as DosGame) As DataStoreResult
		  Var result As New DataStoreResult
		  result.Games = games
		  result.Status = DataStoreResultStatus.success
		  result.Message = ""
		  return result
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Games() As DosGame
	#tag EndProperty

	#tag Property, Flags = &h0
		Message As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Status As DataStoreResultStatus
	#tag EndProperty


	#tag Enum, Name = DataStoreResultStatus, Type = Integer, Flags = &h0
		success
		failed
	#tag EndEnum


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
End Class
#tag EndClass
