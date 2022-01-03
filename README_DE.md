# DOSBoxLauncher

![AppLogo](/Images/AppIcon_128.png)

DOSBoxLauncher konfiguriert und startet DOS Anwendungen (z.B. Spiele) mittels einer auf dem System vorhandenen DOSBox App.
DOSBox selbst ist **kein** Bestandteil dieser App und muss separat installiert werden (siehe https://www.dosbox.com). Es steht eine einfache Konfiguration mit wenigen Parametern im Vordergrund. DOSBoxLauncher eignet sich daher weniger für die Katalogisierung und Verwaltung komplexer Sammlungen von DOS Anwendungen. 

DOSBoxLaunchers Oberfläche unterstüzt englisch und deutsch und läuft aktuell auf MacOS, Windows und Linux. 

Download der kompilierten App, aktuelle Version 1.2.0: 
- [MacOS](https://github.com/stefanwatermann/DOSBoxLauncher/releases/download/v1.1.2/DOSBoxLauncher.app.zip)
- [Windows](https://github.com/stefanwatermann/DOSBoxLauncher/releases/download/v1.1.2/DOSBoxLauncher.zip)
- [Linux (64bit)](https://github.com/stefanwatermann/DOSBoxLauncher/releases/download/v1.1.2/DOSBoxLauncher_amd64_1.2.0-140.deb)

## Lizenz
DOSBoxLauncher ist unter der [MIT Lizenz](/LICENSE) veröffentlich und kann kostenlos verwendet werden.

## Entwicklung
Das Projekt ist mit der Entwicklungsumgebung [XOJO](https://www.xojo.com) (2021r2.1) entstanden. 

## Verwendung
Das Hauptfenster zeigt eine Liste der konfigurierten DOS Anwendungen / Spiele. Ein Doppelklick startet das jeweilige Spiel. 

![DOSBoxLauncher Screenshot](/ScreenShots/DOSBoxLauncher.png)

Die Konfiguration der DOSBox Optionen findet entweder im "einfachen" oder im "Experten" Modus statt.

Der "einfache" Modus erlaubt die schnelle Konfiguration wesentlicher DOSBox Optionen mittels eines einfachen Dialogs.

![DOSBoxLauncher Screenshot](/ScreenShots/DOSBoxLauncher_1.png)

Im "Experten" Modus kann die DOSBox Konfigurationsdatei für die Anwendung direkt bearbeitet werden. Hier können alle DOSBox Optionen und Konfigurationsvarianten verwendet werden. Es steht die volle Kontrolle über die DOS Anwendung zur Verfügung.

![DOSBoxLauncher Screenshot](/ScreenShots/DOSBoxLauncher_2.png)
