# Climate Production Tester - Base

Das ist das Torizon Basis-Betriebsystem des Climate Production Testers. Als overlay hinzugefügt:
- Tailscale
- UDEV Rule um Zebra Label Drucker automatisch dem Docker App Container hinzuzufügen
- App Autostart

## Build und Deploy auf Tester

### Build

1. `git submodule update --init --recursive`
2. Lösche Order "ClimateProdTest-TCB-CUSTOM" falls schon existiert
3. Evtl. IP Einstellungen in settings.json anpassen
4. Kontrolle ob Target erreichbar
5. [in VSCode] F1 -> Run Task -> tcb-build
6. Warten bis 'Build command successfully executed!'

### Deploy

- F1 -> Run Task -> tcb-deploy
  - "ClimateProdTest-TCB-CUSTOM" auswählen


