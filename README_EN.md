# DOSBoxLauncher

![AppLogo](/Images/AppIcon_128.png)

DOSBoxLauncher configures and starts DOS applications (e.g. games) using an already installed DOSBox app on the system. 
DOSBox itself is not part of this app and must be installed separately (see https://www.dosbox.com). 
A simple configuration with a few parameters is in the foreground. DOSBoxLauncher is therefore less suitable for cataloging 
and managing complex collections of DOS applications.

DOSBoxLaunchers interface supports English and German language and currently runs on MacOS and Windows. Linux support is in preparation.

Download of compiled App: 
- [MacOS](/Builds/macOS/DOSBoxLauncher.app.zip)
- [Windows](/Builds/Windows/DOSBoxLauncher.zip)

## License
DOSBox Launcher is published under the [MIT License](/LICENSE) and can be used free of charge.

## Development
The project was created using the development environment [XOJO](https://www.xojo.com) (2021r2.1).

## Useage
The main window shows a list of the configured DOS applications / games. A double click starts the respective game.

![DOSBoxLauncher Screenshot](/ScreenShots/DOSBoxLauncher_EN.png)

The configuration of the DOSBox options takes place either in "simple" or in "expert" mode.

The "simple" mode allows the quick configuration of essential DOSBox options by means of a simple dialog.

![DOSBoxLauncher Screenshot](/ScreenShots/DOSBoxLauncher_1_EN.png)

In "Expert" mode, the DOSBox configuration file for the application can be edited directly. All DOSBox options and configuration variants can be used here. Full control over the DOS application is available.

![DOSBoxLauncher Screenshot](/ScreenShots/DOSBoxLauncher_2_EN.png)
