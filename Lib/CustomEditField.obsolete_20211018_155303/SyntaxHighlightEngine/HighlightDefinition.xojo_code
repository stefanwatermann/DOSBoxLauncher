#tag Class
Protected Class HighlightDefinition
	#tag Method, Flags = &h21
		Private Sub addContext(context as HighlightContext)
		  if Context=nil then Return
		  subContexts.Append(Context)
		  
		  if Context <> PlaceholderContextDef then
		    context.PlaceholderContextDef = PlaceholderContextDef
		  end if
		  
		  subExpressionCount = subExpressionCount + 1
		  subExpressionIndex.Append subExpressionCount
		  
		  fixSubExpressionCount (context.ContextSearchPattern)
		  
		  refreshSearchString
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub addSymbol(symbol as symbolsDefinition)
		  if Symbol = nil then Return
		  Symbols.Append Symbol
		  
		  symbolCount = symbolCount + 1
		  symbolIndex.Append symbolCount
		  
		  // add pattern to search string
		  if symbolPattern <> "" then symbolPattern = symbolPattern + "|"
		  symbolPattern = symbolPattern + "(" + symbol.EntryRegex + ")"
		  fixSymbolCount(symbol.EntryRegex)
		  
		  // update prepared regex for symbolPattern
		  mSymbolRegex.SearchPattern = symbolPattern
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function bool2YN(value as boolean) As string
		  if value then Return "yes"
		  Return "no"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function ColorToText(c as Color) As String
		  dim v as Variant = c
		  return Right("0000000"+Hex(v.IntegerValue),6) // aIntegerValue doesn't include a Color's transparency, so we're safe here
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  //init regex scanner
		  mContextRegex = new RegEx
		  mContextRegex.Options.DotMatchAll=true
		  
		  mSymbolRegex = new RegEx
		  
		  //add a blank space context, this will tokenize strings.
		  dim blankSpaceContext as new HighlightContext(false, false)
		  blankSpaceContext.EntryRegEx = "([ ]|\t|\x0A|(?:\x0D\x0A?))"'"([\s])"
		  blankSpaceContext.Name = "fieldwhitespace"
		  
		  addContext(blankSpaceContext)
		  blockEndDef = new Dictionary
		  blockStartDef = new Dictionary
		  lineContinuationDef = new Dictionary
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ContextEnabled(name as String) As Boolean
		  for each current as HighlightContext in subContexts
		    if current.Name = name then
		      return current.Enabled
		    end if
		  next
		  ' not found?
		  break
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ContextEnabled(name as String, assigns ena as Boolean)
		  for each current as HighlightContext in subContexts
		    if current.Name = name then
		      if current.Enabled <> ena then
		        current.Enabled = ena
		        refreshSearchString
		      end if
		      return
		    end if
		  next
		  ' not found?
		  break
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Contexts() As highlightcontext()
		  dim tmp() as HighlightContext
		  
		  for each current as HighlightContext in subContexts
		    if current.Name <> "fieldwhitespace" and current.Enabled then tmp.Append current
		  next
		  
		  Return tmp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub fixSubExpressionCount(pattern as string)
		  // determine subexpression count
		  // This method is original from Nick Lockwood: http://www.charcoaldesign.co.uk/oss#tokenizer
		  // It speeds up the matching of the matched regex.
		  dim escaped, inCharClass, prevBracket as Boolean = false
		  escaped = false
		  for i as integer = 1 to pattern.Len
		    select case pattern.mid(i,1)
		    case "\"
		      escaped = true
		      prevBracket = false
		    case "("
		      dim nextChar as String = pattern.Mid(i+1,1)
		      if not inCharClass and not escaped and nextChar <> "?" then self.subExpressionCount = self.subExpressionCount + 1
		      prevBracket = false
		      escaped = false
		    case "["
		      if inCharClass or escaped then
		        prevBracket = false
		        escaped = false
		      else
		        inCharClass = true
		        prevBracket = true
		      end
		    case "]"
		      if not prevBracket then inCharClass = false
		      prevBracket = false
		    else
		      prevBracket = false
		      escaped = false
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub fixSymbolCount(pattern as string)
		  // determine subexpression count
		  // This method is original from Nick Lockwood: http://www.charcoaldesign.co.uk/oss#tokenizer
		  // It speeds up the matching of the matched regex.
		  dim escaped, inCharClass, prevBracket as Boolean = false
		  escaped = false
		  for i as integer = 1 to pattern.Len
		    select case pattern.mid(i,1)
		    case "\"
		      escaped = true
		      prevBracket = false
		    case "("
		      dim nextChar as String = pattern.Mid(i+1,1)
		      if not inCharClass and not escaped and nextChar <> "?" then symbolCount = symbolCount + 1
		      prevBracket = false
		      escaped = false
		    case "["
		      if inCharClass or escaped then
		        prevBracket = false
		        escaped = false
		      else
		        inCharClass = true
		        prevBracket = true
		      end
		    case "]"
		      if not prevBracket then inCharClass = false
		      prevBracket = false
		    else
		      prevBracket = false
		      escaped = false
		    end
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Highlight(text as string, tokens() as textsegment, placeholders() as textplaceholder, forceMatch as highlightContext = nil) As highlightcontext
		  #pragma DisableBackgroundTasks
		  
		  
		  #if DebugBuild and EditFieldGlobals.DebugTiming
		    dim runtimer as new Debugging.AccumulationTimer(CurrentMethodName)
		  #endif
		  
		  dim match as RegExMatch
		  dim subExpression as String
		  dim context as HighlightContext
		  dim startPos, startPosB as Integer
		  dim openContext as HighlightContext
		  
		  if text.Encoding <> nil then text = text.ConvertEncoding(EditFieldGlobals.InternalEncoding)
		  
		  if forceMatch = nil then
		    // perform the initial search
		    match = mContextRegex.Search(Text)
		  end if
		  
		  dim charPos, charPosB as Integer
		  while forceMatch <> nil or match<>nil
		    if match = nil Then
		      subExpression = ""
		    else
		      subExpression = match.SubExpressionString(0)
		    end if
		    
		    // determine which token was matched
		    if forceMatch <> nil then
		      context = forceMatch
		      forceMatch = nil
		    else
		      dim tknIndex as integer = -1
		      for i as integer = 1 to match.SubExpressionCount - 1
		        if match.SubExpressionString(i) = subExpression then
		          tknIndex = subExpressionIndex.IndexOf(i)
		          if tknIndex >= 0 then
		            context = subContexts(tknIndex)
		            if not context.Enabled then
		              break ' must not happen - the mContextRegex may not contain disabled contexts
		            end if
		          end if
		          exit
		        end
		      next
		      
		      if tknIndex < 0 then //definition can't handle source!?
		        exit while
		      end if
		    end if
		    
		    //find the actual character position within the string, since SubExpressionStartB returns the byte position,
		    //and if you have multi-byte strings you get an offsetted highlight.
		    if match = nil then
		      charPos = 0
		    else
		      charPos = text.leftb(match.SubExpressionStartB(0)).len
		      charposB = match.SubExpressionStartB(0)
		    end if
		    
		    //Highlight everything up to this point with the default color.
		    if charPos - startPos > 0 then
		      tokens.Append(new TextSegment(startPos, charPos-startPos, TextSegment.TYPE_WORD, DefaultColor))
		    end if
		    
		    startPos = charPos
		    startPosB = charPosB
		    
		    //forward execution to the context for any further processing.
		    if context <> nil and not context.isPlaceholder then
		      if context.Highlight(text, subExpression, startPos, startPosB, mContextRegex, tokens, placeholders) then
		        openContext = context
		      end if
		      startPos = text.leftb(mContextRegex.SearchStartPosition).len
		      startPosB = mContextRegex.SearchStartPosition
		      
		    ElseIf context <> nil and context.isPlaceholder then
		      dim label as String = match.SubExpressionString(match.SubExpressionCount - 1)
		      dim tmp as Integer = text.leftb(match.SubExpressionStartB(match.SubExpressionCount - 1)).len
		      dim placeholder as new TextPlaceholder(startPos, subExpression.Len, tmp, label.len, context.HighlightColor, context.BackgroundColor, context.Bold, context.Italic, context.Underline)
		      tokens.Append(placeholder)
		      placeholders.Append(placeholder)
		      
		      startPos = text.leftb(mContextRegex.SearchStartPosition).len
		      startPosB = mContextRegex.SearchStartPosition
		    end if
		    
		    //and search again
		    match = mContextRegex.Search
		  wend
		  
		  //Highlight the rest of the text with the default color.
		  if text.len - startPos > 0 then
		    tokens.Append(new TextSegment(startPos, text.len - startPos, TextSegment.TYPE_WORD, DefaultColor))
		  end if
		  
		  Return openContext
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub IndentNode(node As XmlNode, level As Integer, indentCloseTag As Boolean = False)
		  static ss As String
		  if ss = "" then
		    ss = EndOfLine
		    For i as Integer = 1 To 20
		      ss = ss + Chr(9) // Tab
		    Next
		  end if
		  dim s as String = ss.Left(level+1)
		  node.Parent.Insert(node.OwnerDocument.CreateTextNode(s), node)
		  If indentCloseTag Then
		    node.AppendChild(node.OwnerDocument.CreateTextNode(s))
		  End If
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsBlockEnd(lineText as string, stateIn as String, ByRef stateOut as String, ByRef ruleOut as Object) As Boolean
		  // returns true if it's a block end, new state and the matched rule (opaque, only useful for matching with IsBlockStart's returned value)
		  
		  stateOut = stateIn
		  
		  #if DebugBuild and EditFieldGlobals.DebugTiming
		    dim runtimer as new Debugging.AccumulationTimer(CurrentMethodName)
		  #endif
		  
		  dim v as Variant = blockEndDef.Lookup (stateIn, nil)
		  if v.IsArray then
		    dim ps() as Pair = v
		    for each p as Pair in ps
		      if p <> nil then
		        dim scanner as RegEx = p.Left
		        if scanner.Search(lineText) <> nil then
		          dim ruleAndState as Pair = p.Right
		          dim state as Pair = ruleAndState.Right
		          if state.Left.BooleanValue then
		            // change state
		            stateOut = state.Right
		          end
		          ruleOut = ruleAndState.Left
		          return true
		        end
		      end if
		    next
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsBlockStart(lineText as string, stateIn as String, ByRef stateOut as String, ByRef ruleOut as Object) As Integer
		  // returns indent value, new state and the matched rule (opaque, only useful for matching with IsBlockEnd's returned value)
		  
		  #if DebugBuild and EditFieldGlobals.DebugTiming
		    dim runtimer as new Debugging.AccumulationTimer(CurrentMethodName)
		  #endif
		  
		  stateOut = stateIn
		  
		  dim v as Variant = blockStartDef.Lookup (stateIn, nil)
		  if v.IsArray then
		    dim ps() as Pair = v
		    for each p as Pair in ps
		      if p <> nil then
		        dim scanner as RegEx = p.Left
		        if scanner.Search(lineText) <> nil then
		          dim indentAndState as Pair = p.Right
		          dim state as Pair = indentAndState.Right
		          if state.Left.BooleanValue then
		            // change state
		            stateOut = state.Right
		          end
		          ruleOut = scanner
		          return indentAndState.Left
		        end
		      end if
		    next
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function IsLineContinuation(lineText as string) As Integer
		  // returns indent value
		  
		  #if DebugBuild and EditFieldGlobals.DebugTiming
		    dim runtimer as new Debugging.AccumulationTimer(CurrentMethodName)
		  #endif
		  
		  if lineContinuationDef.Count = 0 then Return 0
		  
		  dim scanner as RegEx = lineContinuationDef.Key(0)
		  
		  if scanner.Search(lineText) <> nil then
		    Return lineContinuationDef.Value(scanner)
		  end if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function Keywords() As string()
		  //get all the keyword strings in this definition.
		  dim tmp() as String
		  for i as Integer = 0 to UBound(subContexts)
		    subContexts(i).ListKeywords(tmp)
		  next
		  
		  tmp.Sort
		  Return tmp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LineContinuationIndent() As Integer
		  // returns the block indentation of the first default state
		  
		  dim ps() as Pair = blockStartDef.Lookup ("", nil)
		  if not (ps is nil) then
		    dim p as Pair = ps(0)
		    dim indentAndState as Pair = p.Right
		    return indentAndState.Left
		  end
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LoadFromXml(data as folderItem) As boolean
		  if data=nil then Return False
		  
		  //read a file...
		  dim tis as TextInputStream=TextInputStream.Open(data)
		  if tis=nil then Return False
		  
		  dim xml as String=tis.ReadAll(Encodings.UTF8)
		  tis.Close
		  
		  Return loadFromXml(xml)
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function LoadFromXml(data as string) As boolean
		  dim xml as XmlDocument
		  Dim root, node as XMLNode
		  Dim context as HighlightContext
		  dim Symbol as SymbolsDefinition
		  Dim i, j as Integer
		  
		  //load a xml syntax definition.
		  try
		    xml=new XmlDocument
		    xml.LoadXml(data)
		    
		    root=xml.Child(0)
		    //doc check
		    if root.Name<>"highlightDefinition" then
		      break
		      Return False
		    end if
		    if val(root.GetAttribute("version")) > version then
		      break
		      Return False
		    end if
		    
		    dim lastStartRule as Object
		    
		    for i=0 to root.ChildCount-1
		      node=root.Child(i)
		      select case node.Name
		      case "name"
		        //syntax name
		        Name=node.FirstChild.Value
		        
		      case "blockStartMarker"
		        if lastStartRule <> nil then
		          // Error: There's still an unfinished start rule open
		          break
		          return false
		        end
		        dim newstate as XmlAttribute = node.GetAttributeNode("newstate")
		        dim newstateValue as String
		        if newstate <> nil then newstateValue = newstate.Value
		        dim cond as String = node.GetAttribute("condition")
		        dim values() as Pair
		        dim v as Variant = blockStartDef.Lookup(cond, nil)
		        if not v.IsArray then
		          blockStartDef.Value(cond) = values
		        else
		          values = v
		        end if
		        dim re as new RegEx
		        re.SearchPattern = node.FirstChild.Value
		        values.Append re : (node.GetAttribute("indent").Val : (newstate <> nil : newstateValue))
		        lastStartRule = re
		        
		      case "blockEndMarker"
		        if lastStartRule = nil then
		          // Error: End rule without start rule
		          break
		          return false
		        end
		        dim newstate as XmlAttribute = node.GetAttributeNode("newstate")
		        dim newstateValue as String
		        if newstate <> nil then newstateValue = newstate.Value
		        dim cond as String = node.GetAttribute("condition")
		        dim values() as Pair
		        dim v as Variant = blockEndDef.Lookup(cond, nil)
		        if not v.IsArray then
		          blockEndDef.Value(cond) = values
		        else
		          values = v
		        end if
		        dim re as new RegEx
		        re.SearchPattern = node.FirstChild.Value
		        values.Append re : (lastStartRule : (newstate <> nil : newstateValue))
		        lastStartRule = nil
		        
		      case "lineContinuationMarker"
		        //indent is the number of indentations.
		        dim re as new RegEx
		        re.SearchPattern = node.FirstChild.Value
		        lineContinuationDef.Value(re) = val(node.GetAttribute("indent"))
		        
		      case "symbols"
		        for j = 0 to node.ChildCount - 1
		          dim child as XmlNode = node.Child(j)
		          if child.Name = "symbol" then
		            Symbol = new SymbolsDefinition
		            Symbol.loadFromXmlNode(child)
		            addSymbol(Symbol)
		          end if
		        next
		        
		      case "placeholders"
		        placeholderContextDef = new HighlightContext(False, False)
		        placeholderContextDef.EntryRegEx = node.FirstChild.Value
		        placeholderContextDef.isPlaceholder = true
		        placeholderContextDef.Name = "Placeholders"
		        
		        dim tmpObj as Variant
		        if node.GetAttribute("highlightColor") <> "" then
		          tmpObj = "&h" + node.GetAttribute("highlightColor").Mid(1)
		          PlaceholderContextDef.HighlightColor = tmpObj.ColorValue
		        end if
		        
		        if node.GetAttribute("backgroundColor") <> "" then
		          tmpObj = "&h" + node.GetAttribute("backgroundColor").Mid(1)
		          PlaceholderContextDef.BackgroundColor = tmpObj.ColorValue
		        end if
		        
		        dim tmp as String
		        
		        //Bold
		        tmp = node.GetAttribute("bold")
		        if tmp <> "" then placeholderContextDef.Bold = tmp = "true"
		        
		        //Italic
		        tmp = node.GetAttribute("italic")
		        if tmp <> "" then placeholderContextDef.Italic = tmp = "true"
		        
		        //Underline
		        tmp = node.GetAttribute("underline")
		        if tmp <> "" then placeholderContextDef.Underline = tmp = "true"
		        
		        //Enabled
		        tmp = node.GetAttribute("enabled")
		        placeholderContextDef.Enabled = tmp <> "false"
		        
		        self.addContext placeholderContextDef
		        
		      case "contexts"
		        //contexts
		        dim tmpObj as Variant
		        tmpObj = "&h" + node.GetAttribute("defaultColor").Mid(1)
		        defaultColor=tmpObj.ColorValue
		        caseSensitive = YN2Bool(node.GetAttribute("caseSensitive"))
		        for j=0 to node.ChildCount-1
		          Context=new HighlightContext(caseSensitive)
		          Context.loadFromXmlNode(node.Child(j))
		          addContext(Context)
		        next
		      end select
		    Next
		    
		    Return true
		  Catch
		    break
		    Return False
		  end try
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub refreshSearchString()
		  // build search string from all contexts
		  
		  dim patterns() as String
		  for each c as HighlightContext in subContexts
		    if c.Enabled then
		      patterns.Append "(" + c.ContextSearchPattern + ")"
		    end if
		  next
		  
		  mContextRegex.SearchPattern = Join (patterns, "|")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SaveAsXml(file as folderItem) As boolean
		  if file=nil then Return False
		  
		  //save definition as an xml
		  try
		    dim tos as TextOutputStream = TextOutputStream.Create(file)
		    tos.Write(toXml)
		    tos.Close
		    
		    Return true
		  catch
		    Return False
		  end try
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ScanSymbols(forText as string) As dictionary
		  //simple symbol scan
		  
		  if mSymbolRegex = nil then Return nil
		  
		  if forText.Encoding <> nil then forText = forText.ConvertEncoding(Encodings.UTF8)
		  
		  dim match as RegExMatch
		  dim symbol as String
		  dim pos as integer
		  dim local as new Dictionary
		  dim tknIndex as integer
		  dim symbolDef as SymbolsDefinition
		  
		  match = mSymbolRegex.Search(forText)
		  while match <> nil
		    Symbol = match.SubExpressionString(0)
		    pos = forText.leftb(match.SubExpressionStartB(0)).len
		    
		    for i as integer = 1 to match.SubExpressionCount - 1
		      if match.SubExpressionString(i) = symbol then
		        tknIndex = symbolIndex.IndexOf(i)
		        exit
		      end
		    next
		    
		    if tknIndex < 0 or tknIndex > Symbols.Ubound then //definition can't handle source!?
		      exit while
		    end if
		    
		    symbolDef = Symbols(tknIndex)
		    
		    Symbol = Symbol.Trim //strip spaces
		    if Symbol <> "" then
		      local.Value(Symbol) = new DocumentSymbol(Symbol, pos, symbolDef.Type)
		    end if
		    
		    match = mSymbolRegex.Search
		  wend
		  
		  if local.Count = 0 then Return nil
		  Return local
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function SupportsCodeBlocks() As boolean
		  Return blockStartDef.Count > 0 and blockEndDef.Count > 0
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToXML() As string
		  Dim xml as XmlDocument
		  Dim root, node as XMLNode
		  Dim context as HighlightContext
		  dim Symbol as SymbolsDefinition
		  
		  xml = New XmlDocument
		  
		  //root
		  root = xml.AppendChild(xml.CreateElement("highlightDefinition"))
		  root.SetAttribute("version",Str(version,"#.0"))
		  
		  //name
		  node = root.AppendChild(xml.CreateElement("name"))
		  node.AppendChild(xml.CreateTextNode(name))
		  IndentNode(node,1)
		  
		  //block markers
		  for each cond as String in blockStartDef.Keys
		    dim ps() as Pair = blockStartDef.Value(cond)
		    for each p as Pair in ps
		      // p.Left: RegEx with SearchPattern
		      // p.Right: Pair of indent and state
		      node = root.AppendChild(xml.CreateElement("blockStartMarker"))
		      node.AppendChild(xml.CreateTextNode(RegEx(p.Left.ObjectValue).SearchPattern))
		      if cond <> "" then
		        node.SetAttribute("condition", cond)
		      end if
		      dim indentAndState as Pair = p.Right
		      node.SetAttribute("indent", Str(indentAndState.Left, "#"))
		      dim state as Pair = indentAndState.Right
		      if state.Left.BooleanValue then
		        node.SetAttribute("newstate", state.Right)
		      end if
		      IndentNode(node,1)
		    next
		  next
		  for each cond as String in blockEndDef.Keys
		    dim ps() as Pair = blockEndDef.Value(cond)
		    for each p as Pair in ps
		      // p.Left: RegEx with SearchPattern
		      // p.Right: Pair of (rule_ref, Pair of (indent, state))
		      node = root.AppendChild(xml.CreateElement("blockEndMarker"))
		      node.AppendChild(xml.CreateTextNode(RegEx(p.Left.ObjectValue).SearchPattern))
		      if cond <> "" then
		        node.SetAttribute("condition", cond)
		      end if
		      dim state as Pair = Pair(p.Right).Right
		      if state.Left.BooleanValue then
		        node.SetAttribute("newstate", state.Right)
		      end if
		      IndentNode(node,1)
		    next
		  next
		  
		  for each key as RegEx in lineContinuationDef.Keys
		    node = root.AppendChild(xml.CreateElement("lineContinuationMarker"))
		    node.AppendChild(xml.CreateTextNode(key.SearchPattern))
		    node.SetAttribute("indent", Str(lineContinuationDef.Value(key), "#"))
		    IndentNode(node,1)
		  next
		  
		  node = root.AppendChild(xml.CreateElement("symbols"))
		  for each Symbol in Symbols
		    Symbol.appendToXMLNode(node)
		  next
		  IndentNode(node,1, true)
		  
		  if PlaceholderContextDef <> nil then
		    node = root.AppendChild(xml.CreateElement("placeholders"))
		    
		    //HighlightColor
		    node.SetAttribute("highlightColor","#"+ColorToText(HighlightColor))
		    
		    //BackgroundColor
		    if PlaceholderContextDef.HasBackgroundColor then
		      node.SetAttribute("backgroundColor","#"+ColorToText(PlaceholderContextDef.BackgroundColor))
		    end if
		    
		    //bold
		    if PlaceholderContextDef.Bold then
		      node.SetAttribute("bold", "true")
		    end if
		    //italic
		    if PlaceholderContextDef.Italic then
		      node.SetAttribute("italic", "true")
		    end if
		    //Underline
		    if PlaceholderContextDef.Underline then
		      node.SetAttribute("underline", "true")
		    end if
		    
		    //Enabled
		    if not PlaceholderContextDef.Enabled then
		      node.SetAttribute("enabled", "false")
		    end if
		    
		    node.AppendChild(xml.CreateTextNode(PlaceholderContextDef.EntryRegEx))
		    
		    IndentNode(node,1, false)
		  end if
		  
		  node = root.AppendChild(xml.CreateElement("contexts"))
		  node.SetAttribute("defaultColor","#"+ColorToText(defaultColor))
		  node.SetAttribute("caseSensitive",bool2YN(caseSensitive))
		  
		  //process contexts
		  for Each Context in subContexts
		    if Context.Name = "fieldwhitespace" or context.isPlaceholder then Continue for
		    
		    Context.appendToXMLNode(node)
		  next
		  
		  IndentNode(node,1, true)
		  IndentNode(root,0, true)
		  
		  Return xml.ToString
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function YN2Bool(value as string) As boolean
		  if value="yes" then Return true
		  Return False
		End Function
	#tag EndMethod


	#tag Note, Name = About
		Info
		
		HighlightDefinition
		By Alex Restrepo
		send comments, suggestions, fixes to alexrestrepo@mac.com
		
		A little experiment on SyntaxHighlighting
		Contains the rules of how to Highlight the contents of the EditField.
		A definition is composed of one or more HighlightContexts
		
		Methods:
		Highlight(text as string, style as styledText): highlights the provided text using the provided styledtext object.
		LoadFromXml(data as string): loads a HighlightDefinition stored in a xml string
		LoadFromXml(data as folderItem): loads a HighlightDefinition stored in a xml file
		SaveAsXml(file as folderitem): saves the HighlightDefinition as an xml file.
		 
		Properties:
		CaseSensitive: gets or sets if the contained syntax is case-sensitive
		DefaultColor: gets or sets the default color for the text
		Name: the name of the definition (ie: Xml or REALbasic)
		
		
		Open source under the creative commons license.
		Use in whatever way you like... at your own risk :P
		let me know if you find it useful.
		If you decide to use it in your projects, please give me credit in your about window or documentation, thanks.
	#tag EndNote


	#tag Property, Flags = &h21
		#tag Note
			Key: condition
			Value: Array of Pair of (regex, Pair of (regex_of_blockStart, Pair of (changeState as Boolean : newState as String))
		#tag EndNote
		Private blockEndDef As dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		#tag Note
			Key: condition
			Value: Array of Pair of (regex, Pair of (indent as Integer, Pair of (changeState as Boolean : newState as String))
		#tag EndNote
		Private blockStartDef As dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return _caseSensitive
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  _caseSensitive = value
			  mContextRegex.Options.CaseSensitive = value
			End Set
		#tag EndSetter
		CaseSensitive As boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return _defaultColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  _defaultColor=value
			End Set
		#tag EndSetter
		DefaultColor As color
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private lineContinuationDef As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mContextRegex As RegEx
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSymbolRegex As RegEx
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return _name
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  _name=value
			End Set
		#tag EndSetter
		Name As string
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private PlaceholderContextDef As HighlightContext
	#tag EndProperty

	#tag Property, Flags = &h21
		Private subContexts() As HighlightContext
	#tag EndProperty

	#tag Property, Flags = &h21
		Private subExpressionCount As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private subExpressionIndex() As integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private symbolCount As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private symbolIndex() As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private symbolPattern As string
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Symbols() As SymbolsDefinition
	#tag EndProperty

	#tag Property, Flags = &h21
		Private _caseSensitive As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private _defaultColor As color
	#tag EndProperty

	#tag Property, Flags = &h21
		Private _name As string
	#tag EndProperty


	#tag Constant, Name = HtmlDef, Type = String, Dynamic = False, Default = \"<\?xml version\x3D\"1.0\" encoding\x3D\"UTF-8\"\?>\n<highlightDefinition version\x3D\"1.1\">\n\t<name>HTML</name>\n\n\t<blockStartMarker indent\x3D\"1\">(\?x)\n\t\t(&lt;(\?i:head|body|table|thead|tbody|tfoot|tr|div|select|fieldset|style|script|ul|ol|li|form|dl)\\b.*\?&gt;\n\t\t|&lt;!--(\?!.*--\\s*&gt;)\n\t\t|^&lt;!--\\ \\#tminclude\\ (\?&gt;.*\?--&gt;)$\n\t\t|&lt;\\\?(\?:php)\?.*\\b(if|for(each)\?|while)\\b.+:\n\t\t|\\{\\{\?(if|foreach|capture|literal|foreach|php|section|strip)\n\t\t|\\{\\s*($|\\\?&gt;\\s*$|//|/\\*(.*\\*/\\s*$|(\?!.*\?\\*/)))\n\t\t)</blockStartMarker>\n\t<blockEndMarker>(\?x)\n\t\t(&lt;/(\?i:head|body|table|thead|tbody|tfoot|tr|div|select|fieldset|style|script|ul|ol|li|form|dl)&gt;\n\t\t|^(\?!.*\?&lt;!--).*\?--\\s*&gt;\n\t\t|^&lt;!--\\ end\\ tminclude\\ --&gt;$\n\t\t|&lt;\\\?(\?:php)\?.*\\bend(if|for(each)\?|while)\\b\n\t\t|\\{\\{\?/(if|foreach|capture|literal|foreach|php|section|strip)\n\t\t|^[^{]*\\}\n\t\t)</blockEndMarker>\n\n\t<contexts defaultColor\x3D\"#0\" caseSensitive\x3D\"no\">\t\t\n\t\t<highlightContext name\x3D\"Comment\" highlightColor\x3D\"#236E25\">\n\t\t\t<startRegEx>&lt;!--</startRegEx>\n\t\t\t<endRegEx>--&gt;</endRegEx>\n\t\t\t<highlightContext name\x3D\"todos\" highlightColor\x3D\"#FF0000\" backgroundColor\x3D\"#FFFF00\">\n\t\t\t\t<keywords>\n                \t\t<string>TODO</string>\n\t\t\t\t<string>HACK</string>\n\t\t\t\t</keywords>\n\t\t\t</highlightContext>\t\n\t\t</highlightContext>\n\n\t\t<highlightContext name\x3D\"CDATA\" highlightColor\x3D\"#FF0000\">\n\t\t\t<startRegEx>&lt;!\\s*\\[CDATA\\s*\\[</startRegEx>\n\t\t\t<endRegEx>\\]\\s*\\]\\s*&gt;</endRegEx>\n\t\t</highlightContext>\n\t\t\n\t\t<highlightContext name\x3D\"Doctype\" highlightColor\x3D\"#236E25\">\n\t\t\t<startRegEx>&lt;!</startRegEx>\n\t\t\t<endRegEx>&gt;</endRegEx>\n\t\t</highlightContext>\n\t\t\n\t\t<highlightContext name\x3D\"Escape\" highlightColor\x3D\"#236E25\">\n\t\t\t<startRegEx>&lt;\\\?</startRegEx>\n\t\t\t<endRegEx>\\\?&gt;</endRegEx>\n\t\t</highlightContext>\n\t\t\t\t\t\n        <highlightContext name\x3D\"Tags\" highlightColor\x3D\"#881280\">\n            <entryRegEx>(&lt;[^&gt;]*&gt;)</entryRegEx>\n            \n            <highlightContext name\x3D\"Strings in Tags\" highlightColor\x3D\"#1A1AA6\">\n                <entryRegEx>(\"[^\"&gt;&lt;]*\")</entryRegEx>\n            </highlightContext>\n            \n            <highlightContext name\x3D\"Single Strings in Tags\" highlightColor\x3D\"#1A1AA6\">\n                <entryRegEx>(\'[^\'&gt;&lt;]*\')</entryRegEx>\n            </highlightContext>\n            \n            <highlightContext name\x3D\"Attributes in Tags\" highlightColor\x3D\"#994500\">\n                <entryRegEx>([\\w-]*)[ \\t]*\x3D(\?\x3D[ \\t]*\"[^\"&gt;&lt;]*\")</entryRegEx>\n            </highlightContext>    \n        </highlightContext>\n        \n        <highlightContext name\x3D\"Entities\" highlightColor\x3D\"#881280\" backgroundColor\x3D\"#FFFF00\">\n            <entryRegEx>(&amp;\\w{1\x2C8};)</entryRegEx>\n        </highlightContext>\n\n\t</contexts>\n</highlightDefinition>", Scope = Public
	#tag EndConstant

	#tag Constant, Name = JsonDef, Type = String, Dynamic = False, Default = \"<\?xml version\x3D\"1.0\" encoding\x3D\"UTF-8\"\?>\n<highlightDefinition version\x3D\"1.2\">\n\t<name>C/C++</name>\n\n\t<blockStartMarker indent\x3D\"1\">\\{\\s*(\?:$|//|/\\*|\\\\)|\\s*/\\*\\s*$</blockStartMarker>\n\t<blockEndMarker>^\\s*\\}|^\\s*\\*/</blockEndMarker>\t\n\t\n\t<symbols>\n\t\t<symbol type\x3D\"Function C\">\n\t\t\t<entryRegEx>^[ \\t]*(\?:[\\w0-9_*]+\\s+){1\x2C3}[\\w0-9_*]+[ \\t]*\\([\\]\\[\\w0-9_\x2C\\s*&amp;&lt;&gt;/]*\\)(\?!;)(\?\x3D\\s*\\{\?)</entryRegEx>\n\t\t</symbol>\n\t\t<symbol type\x3D\"Method\">\n\t\t\t<entryRegEx>^[ \\t]*(\?:[\\w0-9_*]+(\?:::[\\w0-9_]+)\?\\s+){0\x2C3}[\\w0-9_]+::[\\w0-9_]+[ \\t]*\\([\\]\\[\\w0-9_\x2C\\s*&amp;&lt;&gt;/]*\\)(\?\x3D\\s*\\{\?)</entryRegEx>\n\t\t</symbol>\n\t\t<symbol type\x3D\"Class\">\n\t\t\t<entryRegEx>^[ \\t]*(\?:template[\\t ]*&lt;[^&gt;]*&gt;[\\t\\r\\n ]*)\?class[\\t ]([\\w0-9_]*)(\?:[\\t ]*:[\\t ]*[\\w0-9_]+[\\t ][\\w0-9_&lt;&gt;]+)\?(\?\x3D\\s*\\{\?)</entryRegEx>\n\t\t</symbol>\n\t\t<symbol type\x3D\"#define\">\n\t\t\t<entryRegEx>^\\s*#define[ \\t]*([\\w\\d()]*)[ \\t]+[^\\n\\r]*[\\n\\r]</entryRegEx>\n\t\t</symbol>\t\t\t\t\n\t</symbols>\n\n\t<contexts defaultColor\x3D\"#0\" caseSensitive\x3D\"yes\">\n\t\t<highlightContext name\x3D\"Characters\" highlightColor\x3D\"#FF\">\n\t\t\t<startRegEx>\'</startRegEx>\n\t\t\t<endRegEx>(\\\\\'\')|(.\')</endRegEx>\n\t\t</highlightContext>\n\t\t<highlightContext name\x3D\"Preprocessor\" highlightColor\x3D\"#683821\">\n\t\t\t<startRegEx>#</startRegEx>\n\t\t\t<endRegEx>[\\n\\r]</endRegEx>\n\t\t\t<highlightContext name\x3D\"Numbers\" highlightColor\x3D\"#FF\">\n\t\t\t\t<entryRegEx>(\?&lt;\x3D[^\\w\\d]|^)(((([0-9]+\\.[0-9]*)|(\\.[0-9]+))([eE][+\\-]\?[0-9]+)\?[fFlL]\?)|((([1-9][0-9]*)|0[0-7]*|(0[xX][0-9a-fA-F]+))(([uU][lL]\?)|([lL][uU]\?))\?))(\?\x3D[^\\w\\d]|$)</entryRegEx>\n\t\t\t</highlightContext>\n\t\t</highlightContext>\n\t\t<highlightContext name\x3D\"AutodocComment\" highlightColor\x3D\"#236E25\">\n\t\t\t<startRegEx>/\\*\"</startRegEx>\n\t\t\t<endRegEx>\"\\*/</endRegEx>\n\t\t</highlightContext>\n\t\t<highlightContext name\x3D\"Comment\" highlightColor\x3D\"#236E25\">\n\t\t\t<startRegEx>/\\*</startRegEx>\n\t\t\t<endRegEx>\\*/</endRegEx>\n\t\t</highlightContext>\n\t\t<highlightContext name\x3D\"SingleComment\" highlightColor\x3D\"#236E25\">\n\t\t\t<startRegEx>//</startRegEx>\n\t\t\t<endRegEx>[\\n\\r]</endRegEx>\n\t\t</highlightContext>\n\t\t<highlightContext name\x3D\"String\" highlightColor\x3D\"#760F15\">\n\t\t\t<startRegEx>\"</startRegEx>\n\t\t\t<endRegEx>(((\?&lt;!\\\\)(\\\\\\\\)*)|^)\"</endRegEx>\n\t\t</highlightContext>\n\n        <highlightContext name\x3D\"Keywords\" highlightColor\x3D\"#881350\">\n            <keywords>\n                <string>break</string>\n                <string>case</string>\n                <string>continue</string>\n                <string>default</string>\n                <string>do</string>\n                <string>else</string>\n                <string>enum</string>\n                <string>extern</string>\n                <string>for</string>\n                <string>goto</string>\n                <string>if</string>\n                <string>NULL</string>\n                <string>void</string>\n                <string>return</string>\n                <string>sizeof</string>\n                <string>struct</string>\n                <string>switch</string>\n                <string>typedef</string>\n                <string>union</string>\n                <string>while</string>\n                <string>self</string>\n                <string>super</string>\n                <string>int</string>\n                <string>long</string>\n                <string>float</string>\n                <string>double</string>\n                <string>char</string>\n                <string>unichar</string>\n                <string>unsigned</string>\n                <string>signed</string>\n                <string>const</string>\n                <string>extern</string>\n                <string>static</string>\n                <string>auto</string>\n                <string>register</string>\n                <string>short</string>\n                <string>volatile</string>\n\t\t\t\t<string>class</string>\n\t\t\t\t<string>public</string>\n\t\t\t\t<string>protected</string>\n\t\t\t\t<string>private</string>\n\t\t\t\t<string>this</string>\n            </keywords>\n        </highlightContext>\n        <highlightContext name\x3D\"Numbers\" highlightColor\x3D\"#FF\">\n            <entryRegEx>(\?&lt;\x3D[^\\w\\d]|^)(((([0-9]+\\.[0-9]*)|(\\.[0-9]+))([eE][+\\-]\?[0-9]+)\?[fFlL]\?)|((([1-9][0-9]*)|0[0-7]*|(0[xX][0-9a-fA-F]+))(([uU][lL]\?)|([lL][uU]\?))\?))(\?\x3D[^\\w\\d]|$)</entryRegEx>\n        </highlightContext>\n        <highlightContext name\x3D\"Functions\" highlightColor\x3D\"#3369\">\n            <entryRegEx>([A-Za-z0-9_]+ *)\\(</entryRegEx>\n        </highlightContext>\n\n\t</contexts>\n</highlightDefinition>", Scope = Public
	#tag EndConstant

	#tag Constant, Name = RealBasic, Type = String, Dynamic = False, Default = \"<\?xml version\x3D\"1.0\" encoding\x3D\"UTF-8\"\?>\n<highlightDefinition version\x3D\"1.4\">\n\t<name>REALbasic</name>\n\n<!-- MODULE block -->\n\t<blockStartMarker indent\x3D\"1\">^\\s*(protected\\b|private\\b)\?\\s*module\\b</blockStartMarker>\n\t<blockEndMarker>^\\s*end\\s+module\\b</blockEndMarker>\n\n<!-- CLASS block -->\n\t<blockStartMarker indent\x3D\"1\">^\\s*(protected\\b|private\\b)\?\\s*class\\b</blockStartMarker>\n\t<blockEndMarker>^\\s*end\\s+class\\b</blockEndMarker>\n\n<!-- everything else -->\n\t<blockStartMarker indent\x3D\"1\">^\\s*(\?:(if|elseif)\\b.*\\sthen\\b\\s*((\'|//)|(\?!.+\?))|if\\s(\?!.*\\sthen\\b)|^\\s*(public\\b|protected\\b|private\\b)\?\\s*(shared\\b)\?\\s*(\?&lt;!end\\b)\\s*(sub|function|property)\\b|(do|for|while|select|case|try|catch|else|enum|Get|Set|#if|#elseif|#else)\\b)</blockStartMarker>\n\t<blockEndMarker>^\\s*(\?:end|wend|next|loop|else|case|catch|elseif|#else|#elseif|#endif)\\b</blockEndMarker>\n\n<!-- INTERFACE block - prevents anything inside an interface from being indented: -->\n\t<blockStartMarker indent\x3D\"1\" newstate\x3D\"inside_interface\">^\\s*(protected\\b|private\\b)\?\\s*interface\\b</blockStartMarker>\n\t<blockEndMarker condition\x3D\"inside_interface\" newstate\x3D\"\">^\\s*end\\s+interface\\b</blockEndMarker>\n\n\t<lineContinuationMarker indent\x3D\"2\">^((\?:\"[^\"\\r\\n]*\"|(\?!\'|//|\\brem\\b)[^\\r\\n_])*)_[\\t\\x20]*((\?:\'|//|\\brem\\b)[^\\r\\n]*|)$</lineContinuationMarker>\n\n\t<symbols> <!-- these are used to identify declared symbols that are useful for natigation inside larger source file -->\n\t\t<symbol type\x3D\"Method\">\n\t\t\t<entryRegEx>^\\s*(\?:public|protected|private)\?\\b\\s*(shared\\b)\?\\s*(\?&lt;!end\\b)\\s*(\?:sub|function)\\b.+\?\\([^\\)]*\\)\\s*(\?:as\\b\\s*\\w+\\s*)\?</entryRegEx>\n\t\t</symbol>\n\t\t<symbol type\x3D\"Property\">\n\t\t\t<entryRegEx>^\\s*(\?:public|protected|private)\?\\b\\s*(shared\\b)\?\\s*(\?&lt;!end\\b)\\s*(property\\b).+</entryRegEx>\n\t\t</symbol>\n\t\t<symbol type\x3D\"Class\">\n\t\t\t<entryRegEx>^\\s*(\?:protected\\b|private\\b)\?\\s*class\\s+\\w+\\s*</entryRegEx>\n\t\t</symbol>\n\t\t<symbol type\x3D\"Module\">\n\t\t\t<entryRegEx>^\\s*(\?:protected\\b|private\\b)\?\\s*module\\s+\\w+\\s*</entryRegEx>\n\t\t</symbol>\t\t\n\t\t<symbol type\x3D\"Interface\">\n\t\t\t<entryRegEx>^\\s*(\?:protected\\b|private\\b)\?\\s*interface\\s+\\w+\\s*</entryRegEx>\n\t\t</symbol>\t\t\n\t</symbols>\n\t\n\t<contexts defaultColor\x3D\"#000000\" caseSensitive\x3D\"no\">\t\t\n        <highlightContext name\x3D\"Doubles\" highlightColor\x3D\"#006532\">\n            <entryRegEx>(\?&lt;\x3D[^\\w.&#x7F;-&#x10F7FF;]|^)(\?\x3D\\d+\\.|\\.\\d+|\\d+e(\?:\\d|\\b))(\\d*\\.\\d*(\?:e[-+]\?\\d*)\?|\\d+e[-+]\?\\d*)(\?\x3D[^\\w.&#x7F;-&#x10F7FF;]|$)</entryRegEx>\n        </highlightContext>    \t\n        \n        <highlightContext name\x3D\"Integers\" highlightColor\x3D\"#326598\">\n            <entryRegEx>(\?&lt;\x3D[^\\w.&#x7F;-&#x10F7FF;]|^)(\?:\\d+|&amp;h[[:xdigit:]]*\\b|&amp;o[0-7]*\\b|&amp;b[01]*\\b)(\?\x3D[^\\w.&#x7F;-&#x10F7FF;]|$)</entryRegEx>\n        </highlightContext>\n\n\t\t<highlightContext name\x3D\"PreProcessor\" highlightColor\x3D\"#0000FF\">\n            <entryRegEx>(#\\w+)</entryRegEx>\n        </highlightContext>        \n\t\t\n\t\t<highlightContext name\x3D\"Comment\" highlightColor\x3D\"#7F0000\" italic\x3D\"true\">\n\t\t\t<startRegEx>\'</startRegEx>\n\t\t\t<endRegEx>[\\n\\r]</endRegEx>\n\t\t</highlightContext>\n\t\t\n\t\t<highlightContext name\x3D\"C-Comment\" highlightColor\x3D\"#7F0000\" italic\x3D\"true\">\n\t\t\t<startRegEx>//</startRegEx>\n\t\t\t<endRegEx>[\\n\\r]</endRegEx>\n\t\t</highlightContext>\n\t\t\n\t\t<highlightContext name\x3D\"REM-Comment\" highlightColor\x3D\"#7F0000\" italic\x3D\"true\">\n\t\t\t<startRegEx>\\brem\\b</startRegEx>\n\t\t\t<endRegEx>[\\n\\r]</endRegEx>\n\t\t</highlightContext>\n\t\t\n\t\t<highlightContext name\x3D\"String\" highlightColor\x3D\"#6500FE\">\n\t\t\t<entryRegEx>\"[^\"\\r\\n]*[\"\\r\\n]|&amp;u[[:xdigit:]]*\\b</entryRegEx>\n\t\t</highlightContext>\n\n\t\t<highlightContext name\x3D\"color_red\" highlightColor\x3D\"#FF0000\">\n\t\t\t\t<entryRegEx>(\?&lt;\x3D&amp;c)[[:xdigit:]]{1\x2C2}</entryRegEx>\n\t\t</highlightContext>\n\n\t\t<highlightContext name\x3D\"color_green\" highlightColor\x3D\"#00FF00\">\n\t\t\t\t<entryRegEx>(\?&lt;\x3D&amp;c[[:xdigit:]]{2})[[:xdigit:]]{1\x2C2}</entryRegEx>\n\t\t</highlightContext>\n\n\t\t<highlightContext name\x3D\"color_blue\" highlightColor\x3D\"#0000FF\">\n\t\t\t\t<entryRegEx>(\?&lt;\x3D&amp;c[[:xdigit:]]{4})[[:xdigit:]]{1\x2C2}</entryRegEx>\n\t\t</highlightContext>\n\n        <highlightContext name\x3D\"BasicTypes\" highlightColor\x3D\"#0000FF\" bold\x3D\"true\">\n            <keywords>\n\t\t\t\t<string>Boolean</string>\n\t\t\t\t<string>Color</string>\n\t\t\t\t<string>Double</string>\n\t\t\t\t<string>Integer</string>\n\t\t\t\t<string>Int8</string>\n\t\t\t\t<string>UInt8</string>\n\t\t\t\t<string>Int16</string>\n\t\t\t\t<string>UInt16</string>\n\t\t\t\t<string>Int32</string>\n\t\t\t\t<string>UInt32</string>\n\t\t\t\t<string>Int64</string>\n\t\t\t\t<string>UInt64</string>\n\t\t\t\t<string>Single</string>\n\t\t\t\t<string>String</string>\n\t\t\t\t<string>CFString</string>\n\t\t\t\t<string>Ptr</string>\n            </keywords>\n        </highlightContext>\n\n        <highlightContext name\x3D\"Keywords\" highlightColor\x3D\"#0000FF\" bold\x3D\"true\">\n            <keywords>\n\t\t\t\t<string>#Else</string>\n\t\t\t\t<string>#ElseIf</string>\n\t\t\t\t<string>#EndIf</string>\n\t\t\t\t<string>#If</string>\n\t\t\t\t<string>#Pragma</string>\n\t\t\t\t<string>AddHandler</string>\n\t\t\t\t<string>AddressOf</string>\n\t\t\t\t<string>And</string>\n\t\t\t\t<string>Array</string>\n\t\t\t\t<string>As</string>\n\t\t\t\t<string>Assigns</string>\n\t\t\t\t<string>ByRef</string>\n\t\t\t\t<string>ByVal</string>\n\t\t\t\t<string>Call</string>\n\t\t\t\t<string>Case</string>\n\t\t\t\t<string>Catch</string>\n\t\t\t\t<string>Class</string>\n\t\t\t\t<string>Const</string>\n\t\t\t\t<string>Continue</string>\n\t\t\t\t<string>CType</string>\n\t\t\t\t<string>Declare</string>\n\t\t\t\t<string>Delegate</string>\n\t\t\t\t<string>Dim</string>\n\t\t\t\t<string>Do</string>\n\t\t\t\t<string>DownTo</string>\n\t\t\t\t<string>Each</string>\n\t\t\t\t<string>Else</string>\n\t\t\t\t<string>ElseIf</string>\n\t\t\t\t<string>End</string>\n\t\t\t\t<string>Enum</string>\n\t\t\t\t<string>Event</string>\n\t\t\t\t<string>Exception</string>\n\t\t\t\t<string>Exit</string>\n\t\t\t\t<string>Extends</string>\n\t\t\t\t<string>False</string>\n\t\t\t\t<string>Finally</string>\n\t\t\t\t<string>For</string>\n\t\t\t\t<string>Function</string>\n\t\t\t\t<string>Get</string>\n\t\t\t\t<string>Global</string>\n\t\t\t\t<string>GoTo</string>\n\t\t\t\t<string>Handles</string>\n\t\t\t\t<string>If</string>\n\t\t\t\t<string>Implements</string>\n\t\t\t\t<string>In</string>\n\t\t\t\t<string>Inherits</string>\n\t\t\t\t<string>Inline68K</string>\n\t\t\t\t<string>Interface</string>\n\t\t\t\t<string>Is</string>\n\t\t\t\t<string>IsA</string>\n\t\t\t\t<string>Lib</string>\n\t\t\t\t<string>Loop</string>\n\t\t\t\t<string>Me</string>\n\t\t\t\t<string>Mod</string>\n\t\t\t\t<string>Module</string>\n\t\t\t\t<string>Namespace</string>\n\t\t\t\t<string>New</string>\n\t\t\t\t<string>Next</string>\n\t\t\t\t<string>Nil</string>\n\t\t\t\t<string>Not</string>\n\t\t\t\t<string>Object</string>\n\t\t\t\t<string>Of</string>\n\t\t\t\t<string>Optional</string>\n\t\t\t\t<string>Or</string>\n\t\t\t\t<string>ParamArray</string>\n\t\t\t\t<string>Private</string>\n\t\t\t\t<string>Property</string>\n\t\t\t\t<string>Protected</string>\n\t\t\t\t<string>Public</string>\n\t\t\t\t<string>Raise</string>\n\t\t\t\t<string>RaiseEvent</string>\n\t\t\t\t<string>Redim</string>\n\t\t\t\t<string>Rem</string>\n\t\t\t\t<string>RemoveHandler</string>\n\t\t\t\t<string>Return</string>\n\t\t\t\t<string>Select</string>\n\t\t\t\t<string>Self</string>\n\t\t\t\t<string>Set</string>\n\t\t\t\t<string>Shared</string>\n\t\t\t\t<string>Soft</string>\n\t\t\t\t<string>Static</string>\n\t\t\t\t<string>Step</string>\n\t\t\t\t<string>Structure</string>\n\t\t\t\t<string>Sub</string>\n\t\t\t\t<string>Super</string>\n\t\t\t\t<string>Then</string>\n\t\t\t\t<string>To</string>\n\t\t\t\t<string>True</string>\n\t\t\t\t<string>Try</string>\n\t\t\t\t<string>Until</string>\n\t\t\t\t<string>Wend</string>\n\t\t\t\t<string>While</string>\n\t\t\t\t<string>With</string>\n            </keywords>\n        </highlightContext>\n\t</contexts>\n</highlightDefinition>", Scope = Public
	#tag EndConstant

	#tag Constant, Name = Script, Type = String, Dynamic = False, Default = \"<\?xml version\x3D\"1.0\" encoding\x3D\"UTF-8\"\?>\n<highlightDefinition version\x3D\"1.4\">\n\t<name>REALbasic</name>\n\n<!-- MODULE block -->\n\t<blockStartMarker indent\x3D\"1\">^\\s*(protected\\b|private\\b)\?\\s*module\\b</blockStartMarker>\n\t<blockEndMarker>^\\s*end\\s+module\\b</blockEndMarker>\n\n<!-- CLASS block -->\n\t<blockStartMarker indent\x3D\"1\">^\\s*(protected\\b|private\\b)\?\\s*class\\b</blockStartMarker>\n\t<blockEndMarker>^\\s*end\\s+class\\b</blockEndMarker>\n\n<!-- everything else -->\n\t<blockStartMarker indent\x3D\"1\">^\\s*(\?:(if|elseif)\\b.*\\sthen\\b\\s*((\'|//)|(\?!.+\?))|if\\s(\?!.*\\sthen\\b)|^\\s*(public\\b|protected\\b|private\\b)\?\\s*(shared\\b)\?\\s*(\?&lt;!end\\b)\\s*(sub|function|property)\\b|(do|for|while|select|case|try|catch|else|enum|Get|Set|#if|#elseif|#else)\\b)</blockStartMarker>\n\t<blockEndMarker>^\\s*(\?:end|wend|next|loop|else|case|catch|elseif|#else|#elseif|#endif)\\b</blockEndMarker>\n\n<!-- INTERFACE block - prevents anything inside an interface from being indented: -->\n\t<blockStartMarker indent\x3D\"1\" newstate\x3D\"inside_interface\">^\\s*(protected\\b|private\\b)\?\\s*interface\\b</blockStartMarker>\n\t<blockEndMarker condition\x3D\"inside_interface\" newstate\x3D\"\">^\\s*end\\s+interface\\b</blockEndMarker>\n\n\t<lineContinuationMarker indent\x3D\"2\">^((\?:\"[^\"\\r\\n]*\"|(\?!\'|//|\\brem\\b)[^\\r\\n_])*)_[\\t\\x20]*((\?:\'|//|\\brem\\b)[^\\r\\n]*|)$</lineContinuationMarker>\n\n\t<symbols> <!-- these are used to identify declared symbols that are useful for natigation inside larger source file -->\n\t\t<symbol type\x3D\"Method\">\n\t\t\t<entryRegEx>^\\s*(\?:public|protected|private)\?\\b\\s*(shared\\b)\?\\s*(\?&lt;!end\\b)\\s*(\?:sub|function)\\b.+\?\\([^\\)]*\\)\\s*(\?:as\\b\\s*\\w+\\s*)\?</entryRegEx>\n\t\t</symbol>\n\t\t<symbol type\x3D\"Property\">\n\t\t\t<entryRegEx>^\\s*(\?:public|protected|private)\?\\b\\s*(shared\\b)\?\\s*(\?&lt;!end\\b)\\s*(property\\b).+</entryRegEx>\n\t\t</symbol>\n\t\t<symbol type\x3D\"Class\">\n\t\t\t<entryRegEx>^\\s*(\?:protected\\b|private\\b)\?\\s*class\\s+\\w+\\s*</entryRegEx>\n\t\t</symbol>\n\t\t<symbol type\x3D\"Module\">\n\t\t\t<entryRegEx>^\\s*(\?:protected\\b|private\\b)\?\\s*module\\s+\\w+\\s*</entryRegEx>\n\t\t</symbol>\t\t\n\t\t<symbol type\x3D\"Interface\">\n\t\t\t<entryRegEx>^\\s*(\?:protected\\b|private\\b)\?\\s*interface\\s+\\w+\\s*</entryRegEx>\n\t\t</symbol>\t\t\n\t</symbols>\n\t\n\t<contexts defaultColor\x3D\"#000000\" caseSensitive\x3D\"no\">\t\t\n        <highlightContext name\x3D\"Doubles\" highlightColor\x3D\"#006532\">\n            <entryRegEx>(\?&lt;\x3D[^\\w.&#x7F;-&#x10F7FF;]|^)(\?\x3D\\d+\\.|\\.\\d+|\\d+e(\?:\\d|\\b))(\\d*\\.\\d*(\?:e[-+]\?\\d*)\?|\\d+e[-+]\?\\d*)(\?\x3D[^\\w.&#x7F;-&#x10F7FF;]|$)</entryRegEx>\n        </highlightContext>    \t\n        \n        <highlightContext name\x3D\"Integers\" highlightColor\x3D\"#326598\">\n            <entryRegEx>(\?&lt;\x3D[^\\w.&#x7F;-&#x10F7FF;]|^)(\?:\\d+|&amp;h[[:xdigit:]]*\\b|&amp;o[0-7]*\\b|&amp;b[01]*\\b)(\?\x3D[^\\w.&#x7F;-&#x10F7FF;]|$)</entryRegEx>\n        </highlightContext>\n\n\t\t<highlightContext name\x3D\"PreProcessor\" highlightColor\x3D\"#0000FF\">\n            <entryRegEx>(#\\w+)</entryRegEx>\n        </highlightContext>        \n\t\t\n\t\t<highlightContext name\x3D\"Comment\" highlightColor\x3D\"#7F0000\" italic\x3D\"true\">\n\t\t\t<startRegEx>#</startRegEx>\n\t\t\t<endRegEx>[\\n\\r]</endRegEx>\n\t\t</highlightContext>\n\t\t\n\t\t<highlightContext name\x3D\"C-Comment\" highlightColor\x3D\"#7F0000\" italic\x3D\"true\">\n\t\t\t<startRegEx>//</startRegEx>\n\t\t\t<endRegEx>[\\n\\r]</endRegEx>\n\t\t</highlightContext>\n\t\t\n\t\t<highlightContext name\x3D\"REM-Comment\" highlightColor\x3D\"#7F0000\" italic\x3D\"true\">\n\t\t\t<startRegEx>\\brem\\b</startRegEx>\n\t\t\t<endRegEx>[\\n\\r]</endRegEx>\n\t\t</highlightContext>\n\t\t\n\t\t<highlightContext name\x3D\"String\" highlightColor\x3D\"#6500FE\">\n\t\t\t<entryRegEx>\"[^\"\\r\\n]*[\"\\r\\n]|&amp;u[[:xdigit:]]*\\b</entryRegEx>\n\t\t</highlightContext>\n\n\t\t<highlightContext name\x3D\"color_red\" highlightColor\x3D\"#FF0000\">\n\t\t\t\t<entryRegEx>(\?&lt;\x3D&amp;c)[[:xdigit:]]{1\x2C2}</entryRegEx>\n\t\t</highlightContext>\n\n\t\t<highlightContext name\x3D\"color_green\" highlightColor\x3D\"#00FF00\">\n\t\t\t\t<entryRegEx>(\?&lt;\x3D&amp;c[[:xdigit:]]{2})[[:xdigit:]]{1\x2C2}</entryRegEx>\n\t\t</highlightContext>\n\n\t\t<highlightContext name\x3D\"color_blue\" highlightColor\x3D\"#0000FF\">\n\t\t\t\t<entryRegEx>(\?&lt;\x3D&amp;c[[:xdigit:]]{4})[[:xdigit:]]{1\x2C2}</entryRegEx>\n\t\t</highlightContext>\n\n        <highlightContext name\x3D\"BasicTypes\" highlightColor\x3D\"#0000FF\" bold\x3D\"true\">\n            <keywords>\n\t\t\t\t<string>Boolean</string>\n\t\t\t\t<string>Color</string>\n\t\t\t\t<string>Double</string>\n\t\t\t\t<string>Integer</string>\n\t\t\t\t<string>Int8</string>\n\t\t\t\t<string>UInt8</string>\n\t\t\t\t<string>Int16</string>\n\t\t\t\t<string>UInt16</string>\n\t\t\t\t<string>Int32</string>\n\t\t\t\t<string>UInt32</string>\n\t\t\t\t<string>Int64</string>\n\t\t\t\t<string>UInt64</string>\n\t\t\t\t<string>Single</string>\n\t\t\t\t<string>String</string>\n\t\t\t\t<string>CFString</string>\n\t\t\t\t<string>Ptr</string>\n            </keywords>\n        </highlightContext>\n\n        <highlightContext name\x3D\"Keywords\" highlightColor\x3D\"#0000FF\" bold\x3D\"true\">\n            <keywords>\n\t\t\t\t<string>[sdl]</string>\n\t\t\t\t<string>[dosbox]</string>\n\t\t\t\t<string>#EndIf</string>\n\t\t\t\t<string>#If</string>\n\t\t\t\t<string>#Pragma</string>\n\t\t\t\t<string>AddHandler</string>\n\t\t\t\t<string>AddressOf</string>\n\t\t\t\t<string>And</string>\n\t\t\t\t<string>Array</string>\n\t\t\t\t<string>As</string>\n\t\t\t\t<string>Assigns</string>\n\t\t\t\t<string>ByRef</string>\n\t\t\t\t<string>ByVal</string>\n\t\t\t\t<string>Call</string>\n\t\t\t\t<string>Case</string>\n\t\t\t\t<string>Catch</string>\n\t\t\t\t<string>Class</string>\n\t\t\t\t<string>Const</string>\n\t\t\t\t<string>Continue</string>\n\t\t\t\t<string>CType</string>\n\t\t\t\t<string>Declare</string>\n\t\t\t\t<string>Delegate</string>\n\t\t\t\t<string>Dim</string>\n\t\t\t\t<string>Do</string>\n\t\t\t\t<string>DownTo</string>\n\t\t\t\t<string>Each</string>\n\t\t\t\t<string>Else</string>\n\t\t\t\t<string>ElseIf</string>\n\t\t\t\t<string>End</string>\n\t\t\t\t<string>Enum</string>\n\t\t\t\t<string>Event</string>\n\t\t\t\t<string>Exception</string>\n\t\t\t\t<string>Exit</string>\n\t\t\t\t<string>Extends</string>\n\t\t\t\t<string>False</string>\n\t\t\t\t<string>Finally</string>\n\t\t\t\t<string>For</string>\n\t\t\t\t<string>Function</string>\n\t\t\t\t<string>Get</string>\n\t\t\t\t<string>Global</string>\n\t\t\t\t<string>GoTo</string>\n\t\t\t\t<string>Handles</string>\n\t\t\t\t<string>If</string>\n\t\t\t\t<string>Implements</string>\n\t\t\t\t<string>In</string>\n\t\t\t\t<string>Inherits</string>\n\t\t\t\t<string>Inline68K</string>\n\t\t\t\t<string>Interface</string>\n\t\t\t\t<string>Is</string>\n\t\t\t\t<string>IsA</string>\n\t\t\t\t<string>Lib</string>\n\t\t\t\t<string>Loop</string>\n\t\t\t\t<string>Me</string>\n\t\t\t\t<string>Mod</string>\n\t\t\t\t<string>Module</string>\n\t\t\t\t<string>Namespace</string>\n\t\t\t\t<string>New</string>\n\t\t\t\t<string>Next</string>\n\t\t\t\t<string>Nil</string>\n\t\t\t\t<string>Not</string>\n\t\t\t\t<string>Object</string>\n\t\t\t\t<string>Of</string>\n\t\t\t\t<string>Optional</string>\n\t\t\t\t<string>Or</string>\n\t\t\t\t<string>ParamArray</string>\n\t\t\t\t<string>Private</string>\n\t\t\t\t<string>Property</string>\n\t\t\t\t<string>Protected</string>\n\t\t\t\t<string>Public</string>\n\t\t\t\t<string>Raise</string>\n\t\t\t\t<string>RaiseEvent</string>\n\t\t\t\t<string>Redim</string>\n\t\t\t\t<string>Rem</string>\n\t\t\t\t<string>RemoveHandler</string>\n\t\t\t\t<string>Return</string>\n\t\t\t\t<string>Select</string>\n\t\t\t\t<string>Self</string>\n\t\t\t\t<string>Set</string>\n\t\t\t\t<string>Shared</string>\n\t\t\t\t<string>Soft</string>\n\t\t\t\t<string>Static</string>\n\t\t\t\t<string>Step</string>\n\t\t\t\t<string>Structure</string>\n\t\t\t\t<string>Sub</string>\n\t\t\t\t<string>Super</string>\n\t\t\t\t<string>Then</string>\n\t\t\t\t<string>To</string>\n\t\t\t\t<string>True</string>\n\t\t\t\t<string>Try</string>\n\t\t\t\t<string>Until</string>\n\t\t\t\t<string>Wend</string>\n\t\t\t\t<string>While</string>\n\t\t\t\t<string>With</string>\n            </keywords>\n        </highlightContext>\n\t</contexts>\n</highlightDefinition>", Scope = Public
	#tag EndConstant

	#tag Constant, Name = version, Type = Double, Dynamic = False, Default = \"1.4", Scope = Public
	#tag EndConstant

	#tag Constant, Name = XmlDef, Type = , Dynamic = False, Default = \"<\?xml version\x3D\"1.0\" encoding\x3D\"UTF-8\"\?>\n<highlightDefinition version\x3D\"1.2\">\n\t<name>XML/XHTML</name>\n\n\t<blockStartMarker indent\x3D\"1\">^\\s*(&lt;[^!\?%/](\?!.+\?(/&gt;|&lt;/.+\?&gt;))|&lt;[!%]--(\?!.+\?--%\?&gt;)|&lt;%[!]\?(\?!.+\?%&gt;))</blockStartMarker>\n\t<blockEndMarker>^\\s*(&lt;/[^&gt;]+&gt;|[/%]&gt;|--&gt;)\\s*$</blockEndMarker>\n\t\n\t<symbols>\n\t\t<symbol type\x3D\"Tags\">\n\t\t\t<entryRegEx>&lt;\\w+\\s+[^&gt;]*id *\x3D *\"([^\"]*)\"[^&gt;]*&gt;</entryRegEx>\n\t\t</symbol>\t\t\t\t\t\t\t\t\n\t</symbols>\n\n\t<placeholders highlightColor\x3D\"#000000\" backgroundColor\x3D\"#e9effa\" bold \x3D \"true\">\\{#(.+\?)#\\}</placeholders>\n\n\t<contexts defaultColor\x3D\"#0\" caseSensitive\x3D\"no\">\t\t\n\t\t<highlightContext name\x3D\"Comment\" highlightColor\x3D\"#236E25\">\n\t\t\t<startRegEx>&lt;!--</startRegEx>\n\t\t\t<endRegEx>--&gt;</endRegEx>\n\t\t\t<highlightContext name\x3D\"todos\" highlightColor\x3D\"#FF0000\" backgroundColor\x3D\"#FFFF00\">\n\t\t\t\t<keywords>\n                \t\t<string>TODO</string>\n\t\t\t\t<string>HACK</string>\n\t\t\t\t</keywords>\n\t\t\t</highlightContext>\t\n\t\t</highlightContext>\n\n\t\t<highlightContext name\x3D\"CDATA\" highlightColor\x3D\"#FF0000\">\n\t\t\t<startRegEx>&lt;!\\s*\\[CDATA\\s*\\[</startRegEx>\n\t\t\t<endRegEx>\\]\\s*\\]\\s*&gt;</endRegEx>\n\t\t</highlightContext>\n\t\t\n\t\t<highlightContext name\x3D\"Doctype\" highlightColor\x3D\"#236E25\">\n\t\t\t<startRegEx>&lt;!</startRegEx>\n\t\t\t<endRegEx>&gt;</endRegEx>\n\t\t</highlightContext>\n\t\t\n\t\t<highlightContext name\x3D\"Escape\" highlightColor\x3D\"#236E25\">\n\t\t\t<startRegEx>&lt;\\\?</startRegEx>\n\t\t\t<endRegEx>\\\?&gt;</endRegEx>\n\t\t</highlightContext>\n\t\t\t\t\t\n        <highlightContext name\x3D\"Tags\" highlightColor\x3D\"#881280\">\n            <entryRegEx>(&lt;[^&gt;]*&gt;)</entryRegEx>\n            \n            <highlightContext name\x3D\"Strings in Tags\" highlightColor\x3D\"#1A1AA6\">\n                <entryRegEx>(\"[^\"&gt;&lt;]*\")</entryRegEx>\n            </highlightContext>\n            \n            <highlightContext name\x3D\"Single Strings in Tags\" highlightColor\x3D\"#1A1AA6\">\n                <entryRegEx>(\'[^\'&gt;&lt;]*\')</entryRegEx>\n            </highlightContext>\n            \n            <highlightContext name\x3D\"Attributes in Tags\" highlightColor\x3D\"#994500\">\n                <entryRegEx>([\\w-]*)[ \\t]*\x3D(\?\x3D[ \\t]*\"[^\"&gt;&lt;]*\")</entryRegEx>\n            </highlightContext>    \n        </highlightContext>\n        \n        <highlightContext name\x3D\"Entities\" highlightColor\x3D\"#881280\" backgroundColor\x3D\"#FFFF00\">\n            <entryRegEx>(&amp;\\w{1\x2C8};)</entryRegEx>\n        </highlightContext>\n\n\t</contexts>\n</highlightDefinition>", Scope = Public
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="caseSensitive"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="defaultColor"
			Visible=false
			Group="Behavior"
			InitialValue="&h000000"
			Type="color"
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
