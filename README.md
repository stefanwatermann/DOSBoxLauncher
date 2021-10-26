# DOSBoxLauncher

![AppLogo](/Images/AppIcon_128.png)

Konfiguriert und startet DOS Anwendungen (z.B. alte Spiele) unter MacOS und Windows mittels einer auf dem System vorhandenen/installierten DOSBox App.
DOSBox selbst ist **kein** Bestandteil dieser App und muss separat installiert werden (siehe https://www.dosbox.com).

DOSBoxLauncher läuft aktuell auf MacOS und Windows. Linux Support ist in Vorbereitung.

Aktuelle ausführbare App Dateien befindet sich im "Builds" Ordner des Repositories. 

Download der kompilierten App: 
- [MacOS](/Builds/macOS%20Universal/DOSBoxLauncher.app.zip)
- [Windows](/Builds/Windows/DOSBoxLauncher.zip)

## Lizenz
DOSBoxLauncher ist unter der MIT Lizenz veröffentlich.

## Entwicklung
Das Projekt erfordert die Entwicklungsumgebung XOJO (2021r2.1). 

## Verwendung
Das Hauptfenster zeigt eine Liste der konfigurierten DOS Anwendungen / Spiele. Ein Doppelklick startet das jeweilige Spiel. 

![DOSBoxLauncher Screenshot](/ScreenShots/DOSBoxLauncher.png)

Die Konfiguration der DOSBox Optionen findet entweder im "einfachen" oder im "Experten" Modus statt.

Der "einfache" Modus erlaubt die schnelle Konfiguration wesentlicher DOSBox Optionen mittels eines einfachen Dialogs.

![DOSBoxLauncher Screenshot](/ScreenShots/DOSBoxLauncher_1.png)

Im "Experten" Modus kann die DOSBox Konfigurationsdatei für die Anwendung direkt bearbeitet werden. Hier können alle DOSBox Optionen und Konfigurationsvarianten verwendet werden. Es steht die volle Kontrolle über die DOS Anwendung zur Verfügung.

![DOSBoxLauncher Screenshot](/ScreenShots/DOSBoxLauncher_2.png)
