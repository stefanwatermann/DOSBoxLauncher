#tag Module
Protected Module DOSBox
	#tag Method, Flags = &h0
		Sub RunGame(configPath as string, autoExit as Boolean)
		  Var cmd As String = kDefault_DOSBox_AppPath
		  
		  If DOSBoxExecutable.Length > 0 Then
		    cmd = DOSBoxExecutable + kDefault_DOSBox_AppPathPartial
		  End
		  
		  cmd = cmd + " -userconf "
		  
		  If autoExit Then
		    cmd = cmd + " -exit"
		  End
		  
		  cmd = cmd + " -conf '" + configPath + "'"
		  
		  Var sh As New shell
		  sh.Execute(cmd)
		  ExitCode = sh.ExitCode
		  
		  Result = sh.Result.Right(sh.result.Length - sh.result.IndexOf("DOSBox version"))
		  
		  sh.Close
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		DOSBoxExecutable As string
	#tag EndProperty

	#tag Property, Flags = &h0
		ExitCode As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Result As String
	#tag EndProperty


	#tag Constant, Name = kDefault_DOSBox_AppPath, Type = String, Dynamic = False, Default = \"", Scope = Private
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"/Applications/dosbox.app/Contents/MacOS/DOSBox"
	#tag EndConstant

	#tag Constant, Name = kDefault_DOSBox_AppPathPartial, Type = String, Dynamic = False, Default = \"", Scope = Private
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"/Contents/MacOS/DOSBox"
	#tag EndConstant

	#tag Constant, Name = kDefault_DOSBox_Config, Type = String, Dynamic = False, Default = \"", Scope = Public
		#Tag Instance, Platform = Mac OS, Language = Default, Definition  = \"# This is the configuration file for DOSBox 0.74-3-3. (Please use the latest version of DOSBox)\n# Lines starting with a # are comment lines and are ignored by DOSBox.\n# They are used to (briefly) document the effect of each option.\n\n[sdl]\n#       fullscreen: Start dosbox directly in fullscreen. (Press ALT-Enter to go back)\n#       fulldouble: Use double buffering in fullscreen. It can reduce screen flickering\x2C but it can also result in a slow DOSBox.\n#   fullresolution: What resolution to use for fullscreen: original\x2C desktop or fixed size (e.g. 1024x768).\n#                     Using your monitor\'s native resolution (desktop) with aspect\x3Dtrue might give the best results.\n#                     If you end up with small window on a large screen\x2C try an output different from surface.\n#                     On Windows 10 with display scaling (Scale and layout) set to a value above 100%\x2C it is recommended\n#                     to use a lower full/windowresolution\x2C in order to avoid window size problems.\n# windowresolution: Scale the window to this size IF the output device supports hardware scaling.\n#                     (output\x3Dsurface does not!)\n#           output: What video system to use for output.\n#                   Possible values: surface\x2C overlay\x2C opengl\x2C openglnb.\n#         autolock: Mouse will automatically lock\x2C if you click on the screen. (Press CTRL-F10 to unlock)\n#      sensitivity: Mouse sensitivity.\n#      waitonerror: Wait before closing the console if dosbox has an error.\n#         priority: Priority levels for dosbox. Second entry behind the comma is for when dosbox is not focused/minimized.\n#                     pause is only valid for the second entry.\n#                   Possible values: lowest\x2C lower\x2C normal\x2C higher\x2C highest\x2C pause.\n#       mapperfile: File used to load/save the key/event mappings from. Resetmapper only works with the defaul value.\n#     usescancodes: Avoid usage of symkeys\x2C might not work on all operating systems.\n\nfullscreen\x3Dfalse\nfulldouble\x3Dfalse\nfullresolution\x3Doriginal\n#windowresolution\x3Doriginal\nwindowresolution\x3D1024x768\noutput\x3Dopengl\nautolock\x3Dtrue\nsensitivity\x3D100\nwaitonerror\x3Dtrue\npriority\x3Dhigher\x2Cnormal\nmapperfile\x3Dmapper-0.74-3-3.map\nusescancodes\x3Dtrue\n\n[dosbox]\n# language: Select another language file.\n#  machine: The type of machine DOSBox tries to emulate.\n#           Possible values: hercules\x2C cga\x2C tandy\x2C pcjr\x2C ega\x2C vgaonly\x2C svga_s3\x2C svga_et3000\x2C svga_et4000\x2C svga_paradise\x2C vesa_nolfb\x2C vesa_oldvbe.\n# captures: Directory where things like wave\x2C midi\x2C screenshot get captured.\n#  memsize: Amount of memory DOSBox has in megabytes.\n#             This value is best left at its default to avoid problems with some games\x2C\n#             though few games might require a higher value.\n#             There is generally no speed advantage when raising this value.\n\nlanguage\x3D\nmachine\x3Dsvga_s3\ncaptures\x3Dcapture\nmemsize\x3D16\n\n[render]\n# frameskip: How many frames DOSBox skips before drawing one.\n#    aspect: Do aspect correction\x2C if your output method doesn\'t support scaling this can slow things down!\n#    scaler: Scaler used to enlarge/enhance low resolution modes. If \'forced\' is appended\x2C\n#              then the scaler will be used even if the result might not be desired.\n#              To fit a scaler in the resolution used at full screen may require a border or side bars\x2C\n#              to fill the screen entirely\x2C depending on your hardware\x2C a different scaler/fullresolution might work.\n#            Possible values: none\x2C normal2x\x2C normal3x\x2C advmame2x\x2C advmame3x\x2C advinterp2x\x2C advinterp3x\x2C hq2x\x2C hq3x\x2C 2xsai\x2C super2xsai\x2C supereagle\x2C tv2x\x2C tv3x\x2C rgb2x\x2C rgb3x\x2C scan2x\x2C scan3x.\n\nframeskip\x3D0\naspect\x3Dfalse\nscaler\x3Dhq3x\n\n[cpu]\n#      core: CPU Core used in emulation. auto will switch to dynamic if available and\n#            appropriate.\n#            Possible values: auto\x2C dynamic\x2C normal\x2C simple.\n#   cputype: CPU Type used in emulation. auto is the fastest choice.\n#            Possible values: auto\x2C 386\x2C 386_slow\x2C 486_slow\x2C pentium_slow\x2C 386_prefetch.\n#    cycles: Amount of instructions DOSBox tries to emulate each millisecond.\n#            Setting this value too high results in sound dropouts and lags.\n#            Cycles can be set in 3 ways:\n#              \'auto\'          tries to guess what a game needs.\n#                              It usually works\x2C but can fail for certain games.\n#              \'fixed #number\' will set a fixed amount of cycles. This is what you usually\n#                              need if \'auto\' fails. (Example: fixed 4000).\n#              \'max\'           will allocate as much cycles as your computer is able to\n#                              handle.\n#            Possible values: auto\x2C fixed\x2C max.\n#   cycleup: Amount of cycles to decrease/increase with keycombos.(CTRL-F11/CTRL-F12)\n# cycledown: Setting it lower than 100 will be a percentage.\n\ncore\x3Dauto\ncputype\x3Dauto\ncycles\x3Dauto\ncycleup\x3D10\ncycledown\x3D20\n\n[mixer]\n#   nosound: Enable silent mode\x2C sound is still emulated though.\n#      rate: Mixer sample rate\x2C setting any device\'s rate higher than this will probably lower their sound quality.\n#            Possible values: 44100\x2C 48000\x2C 32000\x2C 22050\x2C 16000\x2C 11025\x2C 8000\x2C 49716.\n# blocksize: Mixer block size\x2C larger blocks might help sound stuttering but sound will also be more lagged.\n#            Possible values: 1024\x2C 2048\x2C 4096\x2C 8192\x2C 512\x2C 256.\n# prebuffer: How many milliseconds of data to keep on top of the blocksize.\n\nnosound\x3Dfalse\nrate\x3D44100\nblocksize\x3D1024\nprebuffer\x3D25\n\n[midi]\n#     mpu401: Type of MPU-401 to emulate.\n#             Possible values: intelligent\x2C uart\x2C none.\n# mididevice: Device that will receive the MIDI data from MPU-401.\n#             Possible values: default\x2C win32\x2C alsa\x2C oss\x2C coreaudio\x2C coremidi\x2C none.\n# midiconfig: Special configuration options for the device driver. This is usually the id of the device you want to use\n#               (find the id with mixer/listmidi).\n#               Or in the case of coreaudio\x2C you can specify a soundfont here.\n#               See the README/Manual for more details.\n\nmpu401\x3Dintelligent\nmididevice\x3Ddefault\nmidiconfig\x3D\n\n[sblaster]\n#  sbtype: Type of Soundblaster to emulate. gb is Gameblaster.\n#          Possible values: sb1\x2C sb2\x2C sbpro1\x2C sbpro2\x2C sb16\x2C gb\x2C none.\n#  sbbase: The IO address of the soundblaster.\n#          Possible values: 220\x2C 240\x2C 260\x2C 280\x2C 2a0\x2C 2c0\x2C 2e0\x2C 300.\n#     irq: The IRQ number of the soundblaster.\n#          Possible values: 7\x2C 5\x2C 3\x2C 9\x2C 10\x2C 11\x2C 12.\n#     dma: The DMA number of the soundblaster.\n#          Possible values: 1\x2C 5\x2C 0\x2C 3\x2C 6\x2C 7.\n#    hdma: The High DMA number of the soundblaster.\n#          Possible values: 1\x2C 5\x2C 0\x2C 3\x2C 6\x2C 7.\n# sbmixer: Allow the soundblaster mixer to modify the DOSBox mixer.\n# oplmode: Type of OPL emulation. On \'auto\' the mode is determined by sblaster type. All OPL modes are Adlib-compatible\x2C except for \'cms\'.\n#          Possible values: auto\x2C cms\x2C opl2\x2C dualopl2\x2C opl3\x2C none.\n#  oplemu: Provider for the OPL emulation. compat might provide better quality (see oplrate as well).\n#          Possible values: default\x2C compat\x2C fast.\n# oplrate: Sample rate of OPL music emulation. Use 49716 for highest quality (set the mixer rate accordingly).\n#          Possible values: 44100\x2C 49716\x2C 48000\x2C 32000\x2C 22050\x2C 16000\x2C 11025\x2C 8000.\n\nsbtype\x3Dsb16\nsbbase\x3D220\nirq\x3D7\ndma\x3D1\nhdma\x3D5\nsbmixer\x3Dtrue\noplmode\x3Dauto\noplemu\x3Ddefault\noplrate\x3D44100\n\n[gus]\n#      gus: Enable the Gravis Ultrasound emulation.\n#  gusrate: Sample rate of Ultrasound emulation.\n#           Possible values: 44100\x2C 48000\x2C 32000\x2C 22050\x2C 16000\x2C 11025\x2C 8000\x2C 49716.\n#  gusbase: The IO base address of the Gravis Ultrasound.\n#           Possible values: 240\x2C 220\x2C 260\x2C 280\x2C 2a0\x2C 2c0\x2C 2e0\x2C 300.\n#   gusirq: The IRQ number of the Gravis Ultrasound.\n#           Possible values: 5\x2C 3\x2C 7\x2C 9\x2C 10\x2C 11\x2C 12.\n#   gusdma: The DMA channel of the Gravis Ultrasound.\n#           Possible values: 3\x2C 0\x2C 1\x2C 5\x2C 6\x2C 7.\n# ultradir: Path to Ultrasound directory. In this directory\n#           there should be a MIDI directory that contains\n#           the patch files for GUS playback. Patch sets used\n#           with Timidity should work fine.\n\ngus\x3Dfalse\ngusrate\x3D44100\ngusbase\x3D240\ngusirq\x3D5\ngusdma\x3D3\nultradir\x3DC:\\ULTRASND\n\n[speaker]\n# pcspeaker: Enable PC-Speaker emulation.\n#    pcrate: Sample rate of the PC-Speaker sound generation.\n#            Possible values: 44100\x2C 48000\x2C 32000\x2C 22050\x2C 16000\x2C 11025\x2C 8000\x2C 49716.\n#     tandy: Enable Tandy Sound System emulation. For \'auto\'\x2C emulation is present only if machine is set to \'tandy\'.\n#            Possible values: auto\x2C on\x2C off.\n# tandyrate: Sample rate of the Tandy 3-Voice generation.\n#            Possible values: 44100\x2C 48000\x2C 32000\x2C 22050\x2C 16000\x2C 11025\x2C 8000\x2C 49716.\n#    disney: Enable Disney Sound Source emulation. (Covox Voice Master and Speech Thing compatible).\n\npcspeaker\x3Dtrue\npcrate\x3D44100\ntandy\x3Dauto\ntandyrate\x3D44100\ndisney\x3Dtrue\n\n[joystick]\n# joysticktype: Type of joystick to emulate: auto (default)\x2C none\x2C\n#               2axis (supports two joysticks)\x2C\n#               4axis (supports one joystick\x2C first joystick used)\x2C\n#               4axis_2 (supports one joystick\x2C second joystick used)\x2C\n#               fcs (Thrustmaster)\x2C ch (CH Flightstick).\n#               none disables joystick emulation.\n#               auto chooses emulation depending on real joystick(s).\n#               (Remember to reset dosbox\'s mapperfile if you saved it earlier)\n#               Possible values: auto\x2C 2axis\x2C 4axis\x2C 4axis_2\x2C fcs\x2C ch\x2C none.\n#        timed: enable timed intervals for axis. Experiment with this option\x2C if your joystick drifts (away).\n#     autofire: continuously fires as long as you keep the button pressed.\n#       swap34: swap the 3rd and the 4th axis. Can be useful for certain joysticks.\n#   buttonwrap: enable button wrapping at the number of emulated buttons.\n\njoysticktype\x3Dauto\ntimed\x3Dtrue\nautofire\x3Dfalse\nswap34\x3Dfalse\nbuttonwrap\x3Dfalse\n\n[serial]\n# serial1: set type of device connected to com port.\n#          Can be disabled\x2C dummy\x2C modem\x2C nullmodem\x2C directserial.\n#          Additional parameters must be in the same line in the form of\n#          parameter:value. Parameter for all types is irq (optional).\n#          for directserial: realport (required)\x2C rxdelay (optional).\n#                           (realport:COM1 realport:ttyS0).\n#          for modem: listenport (optional).\n#          for nullmodem: server\x2C rxdelay\x2C txdelay\x2C telnet\x2C usedtr\x2C\n#                         transparent\x2C port\x2C inhsocket (all optional).\n#          Example: serial1\x3Dmodem listenport:5000\n#          Possible values: dummy\x2C disabled\x2C modem\x2C nullmodem\x2C directserial.\n# serial2: see serial1\n#          Possible values: dummy\x2C disabled\x2C modem\x2C nullmodem\x2C directserial.\n# serial3: see serial1\n#          Possible values: dummy\x2C disabled\x2C modem\x2C nullmodem\x2C directserial.\n# serial4: see serial1\n#          Possible values: dummy\x2C disabled\x2C modem\x2C nullmodem\x2C directserial.\n\nserial1\x3Ddummy\nserial2\x3Ddummy\nserial3\x3Ddisabled\nserial4\x3Ddisabled\n\n[dos]\n#            xms: Enable XMS support.\n#            ems: Enable EMS support.\n#            umb: Enable UMB support.\n# keyboardlayout: Language code of the keyboard layout (or none).\n\nxms\x3Dtrue\nems\x3Dtrue\numb\x3Dtrue\nkeyboardlayout\x3Dauto\n\n[ipx]\n# ipx: Enable ipx over UDP/IP emulation.\n\nipx\x3Dfalse\n\n[autoexec]\n# Lines in this section will be run at startup.\n# You can put your MOUNT lines here.\n\n# mount d \"<path>\" -t cdrom\n# mount c \"<game folder>\"\n\n# run game\n"
	#tag EndConstant

	#tag Constant, Name = kDOSBoxWikiUrl, Type = String, Dynamic = False, Default = \"https://www.dosbox.com/wiki", Scope = Public
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
		#tag ViewProperty
			Name="ExitCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Result"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DOSBoxExecutable"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Module
#tag EndModule
