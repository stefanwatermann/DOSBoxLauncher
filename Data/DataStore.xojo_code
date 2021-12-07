#tag Module
Protected Module DataStore
	#tag Method, Flags = &h0
		Function Delete(game as DosGame) As DataStoreResult
		  If zConnectDatabaseFile Then
		    
		    Try
		      
		      Var sql As String = zCreateSelectStatement("game", "*", "id=" + Str(game.id), "")
		      
		      Var rs As RowSet = zDb.SelectSQL(sql)
		      
		      If rs.RowCount > 0 Then
		        rs.RemoveRow
		      End
		      
		      Return DataStoreResult.Success()
		      
		    Catch e As DatabaseException
		      Return DataStoreResult.Failed(e)
		    End
		    
		  Else
		    Return DataStoreResult.Failed(zLastDbStatus)
		  End
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get(where as string = "", orderby as string = "", ascending as Boolean = true) As DataStoreResult
		  
		  If zConnectDatabaseFile Then
		    
		    Var sql As String = zCreateSelectStatement("game", "*", where, orderby, ascending)
		    
		    Var rs As RowSet = zDb.SelectSQL(sql)
		    
		    Var games() As DosGame = zRowSet2DosGames(rs)
		    
		    Return DataStoreResult.Success(games)
		  Else
		    Return DataStoreResult.Failed(zLastDbStatus)
		  End
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Initialize(gamesRootFolder as folderitem)
		  zDatabaseFile = gamesRootFolder.Child(kDosGamesDataFileName)
		  
		  If zDatabaseFile = Nil Or Not zDatabaseFile.Exists Then
		    SpecialFolder.Resources.Child(kDosGamesDataFileName).CopyTo(zDatabaseFile)
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Save(game as dosgame) As DataStoreResult
		  If zConnectDatabaseFile Then
		    
		    Try
		      
		      Var sql As String = zCreateSelectStatement("game", "*", "id=" + Str(game.id), "")
		      
		      Var rs As RowSet = zDb.SelectSQL(sql)
		      
		      If rs.RowCount > 0 Then
		        // update
		        rs.EditRow
		        zDosGame2DatabaseRow(game, rs.Iterator.Value)
		        rs.SaveRow
		      Else
		        // add new
		        Var row As New DatabaseRow
		        zDosGame2DatabaseRow(game, row)
		        zDb.AddRow("game", row)
		      End
		      
		      Return DataStoreResult.Success()
		      
		    Catch e As DatabaseException
		      Return DataStoreResult.Failed(e)
		    End
		    
		  Else
		    Return DataStoreResult.Failed(zLastDbStatus)
		  End
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function zCheckDbVersion() As Boolean
		  // HINT: expects an open db-connection
		  // DO NOT CALL zConnectDatabaseFile() from here!!
		  
		  Var sql As String = zCreateSelectStatement("info", "version", "", "")
		  
		  Var rs As RowSet = zDb.SelectSQL(sql)
		  Var version As Integer = rs.Column("version").IntegerValue
		  rs.Close
		  
		  If version <> kSupportedDbVersion Then
		    zLastDbStatus = "Current games databse file incompatible with this application version."
		    Return False
		  End
		  
		  Return True
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function zConnectDatabaseFile() As Boolean
		  If zDatabaseFile = Nil Or Not zDatabaseFile.Exists Then
		    Raise New RuntimeException("Database file not found at " + zDatabaseFile.NativePath)
		  End
		  
		  zDb = New SQLiteDatabase
		  zDb.DatabaseFile = zDatabaseFile
		  
		  Try
		    
		    If Not zDb.DatabaseFile.Exists Then
		      zLastDbStatus = "Database file '" + zDb.DatabaseFile.NativePath + "' not found."
		      Return false
		    End
		    
		    zDb.Connect
		    
		    zLastDbStatus = "connected"
		    
		    Return zCheckDbVersion()
		    
		  Catch e As DatabaseException
		    
		    zLastDbStatus = e.Message
		    
		    Return False
		    
		  End Try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function zCreateSelectStatement(table as string, cols as string, where as string, orderby as string, ascending as Boolean = true) As string
		  Var sql As String = "select " + cols + " from " + table
		  
		  If where.Length > 0 Then
		    sql = sql + " where " + where
		  End
		  
		  If orderby.Length > 0 Then
		    sql = sql + " order by " + orderby
		    
		    If ascending Then
		      sql = sql + " asc"
		    else
		      sql = sql + " desc"
		    End
		  end
		  
		  Return sql
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub zDosGame2DatabaseRow(game as DOSGame, dbrow as DatabaseRow)
		  dbrow.Column("Name").StringValue = game.Name
		  dbrow.Column("AutoExit").BooleanValue = game.AutoExit
		  dbrow.Column("CpuCycles").StringValue = game.CpuCycles
		  dbrow.Column("DOSBoxSettingsTextExpert").StringValue = game.DOSBoxSettingsTextExpert
		  dbrow.Column("ExpertMode").BooleanValue = game.ExpertMode
		  dbrow.Column("FolderMountAsC").StringValue = game.FolderMountAsC
		  dbrow.Column("FolderMountAsD").StringValue = game.FolderMountAsD
		  dbrow.Column("Fullscreen").BooleanValue = game.Fullscreen
		  dbrow.Column("LastStartDt").DateTimeValue = game.LastStartDt
		  dbrow.Column("MachineType").StringValue = game.MachineType
		  dbrow.Column("MountDAsCdrom").BooleanValue = game.MountDAsCdrom
		  dbrow.Column("Resolution").StringValue = game.Resolution
		  dbrow.Column("Scaler").StringValue = game.Scaler
		  dbrow.Column("StartDrive").StringValue = game.StartDrive
		  dbrow.Column("StartFile").StringValue = game.StartFile
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function zRowSet2DosGames(rs as RowSet) As DosGame()
		  Var games() As DosGame
		  
		  For Each row As DatabaseRow In rs
		    
		    Var game As New DOSGame
		    
		    game.Id = rs.Column("id").IntegerValue
		    game.Name = rs.Column("Name").StringValue
		    game.AutoExit = rs.Column("AutoExit").BooleanValue
		    game.CpuCycles = rs.Column("CpuCycles").StringValue
		    game.ExpertMode = rs.Column("ExpertMode").BooleanValue
		    game.FolderMountAsC = rs.Column("FolderMountAsC").StringValue
		    game.FolderMountAsD = rs.Column("FolderMountAsD").StringValue
		    game.Fullscreen = rs.Column("Fullscreen").BooleanValue
		    game.LastStartDt = rs.Column("LastStartDt").DateTimeValue
		    game.MachineType = rs.Column("MachineType").StringValue
		    game.MountDAsCdrom = rs.Column("MountDAsCdrom").BooleanValue
		    game.Resolution = rs.Column("Resolution").StringValue
		    game.Scaler = rs.Column("Scaler").StringValue
		    game.DOSBoxSettingsTextExpert = rs.Column("DOSBoxSettingsTextExpert").StringValue
		    game.StartDrive = rs.Column("StartDrive").StringValue
		    game.StartFile = rs.Column("StartFile").StringValue
		    
		    games.Add(game)
		    
		  Next
		  
		  Return games
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private zDatabaseFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private zDb As SQLiteDatabase
	#tag EndProperty

	#tag Property, Flags = &h21
		Private zLastDbStatus As string
	#tag EndProperty


	#tag Constant, Name = kDosGamesDataFileName, Type = String, Dynamic = False, Default = \"dosboxlauncher.db", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kSupportedDbVersion, Type = Double, Dynamic = False, Default = \"1", Scope = Private
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
	#tag EndViewBehavior
End Module
#tag EndModule
