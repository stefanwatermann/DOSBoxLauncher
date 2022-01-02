#tag Menu
Begin Menu MainMenuBar
   Begin DesktopApplicationMenuItem FileMenu
      SpecialMenu = 0
      Index = -2147483648
      Text = "#App.kFileMenu"
      AutoEnabled = True
      AutoEnable = True
      Visible = False
      Begin DesktopApplicationMenuItem FileAbout
         SpecialMenu = 0
         Index = -2147483648
         Text = "#App.kMainMenu_FileAbout_Text"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
      Begin DesktopQuitMenuItem FileQuit
         SpecialMenu = 0
         Index = -2147483648
         Text = "#App.kFileQuit"
         ShortcutKey = "#App.kFileQuitShortcut"
         Shortcut = "#App.kFileQuitShortcut"
         AutoEnabled = True
         AutoEnable = True
         Visible = True
      End
   End
End
#tag EndMenu
