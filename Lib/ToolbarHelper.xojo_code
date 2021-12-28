#tag Module
Protected Module ToolbarHelper
	#tag Method, Flags = &h0, Description = 5365742069636F6E206F6620746F6F6C6261722D627574746F6E20646570656E64696E67206F662076697375616C20617070656172616E63652E2069636F6E4C69676874203D2075736520666F72206C69676874206D6F64652C2069636F6E4461726B203D2075736520666F72206461726B206D6F64652E
		Sub SetIcons(extends item as DesktopToolbarItem, iconLight as Picture, iconDark as Picture)
		  Var btn As DesktopToolbarButton = DesktopToolbarButton(item)
		  
		  If Color.IsDarkMode Then
		    btn.Icon = iconDark
		  Else
		    btn.icon = iconLight
		  End
		  
		End Sub
	#tag EndMethod


End Module
#tag EndModule
