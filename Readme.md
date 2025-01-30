# Climate Production Tester - Base

Das ist das Torizon Basis-Betriebsystem des Climate Production Testers. Als overlay hinzugefügt:
- Tailscale
- UDEV Rule um Zebra Label Drucker automatisch dem Docker App Container hinzuzufügen
- App Autostart

## Build und Deploy auf Tester

### Build

1. `git submodule update --init --recursive`
2. Lösche Order "ClimateProdTestBase-TCB-CUSTOM" falls schon existiert
3. Evtl. IP Einstellungen in settings.json anpassen
4. Kontrolle ob Target erreichbar
5. [in VSCode] F1 -> Run Task -> tcb-build
6. Warten bis 'Build command successfully executed!'

### Deploy

- F1 -> Run Task -> tcb-deploy
  - "ClimateProdTestBase-TCB-CUSTOM" auswählen

## Release

- Release build starten mit tag `v[0-9]`
  - Torizoncore builder nummeriert 1,2,3..n
  - Darauf achten, dass die Tagnummer mit der Torizoncore buildnummer
    der Torizon Platform übereinstimmt.

## Production Installation

- Das Release archiv herunterladen und mit Toradex Easy Installer installieren
- Auf Gerät verbinden, passwort erstellen
- Gerät auf Platform hinzufügen (Provision)
- GitHub Registry token abspeichern (für zugriff auf private Registry
  - `sudo docker --config /etc/docker login ghcr.io -u impuls-ing`
  - Token befindet sich im Passwort-Manager
