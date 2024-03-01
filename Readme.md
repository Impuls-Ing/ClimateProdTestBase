# Climate Production Tester - Base

Das ist das Torizon Basis-Betriebsystem des Climate Production Testers. Als overlay hinzugefügt:
- Tailscale
- UDEV Rule um Zebra Label Drucker automatisch dem Docker App Container hinzuzufügen
- App Autostart

## Build und Deploy auf Tester

- Lösche Order "ClimateProdTest-TCB-CUSTOM" falls schon existiert
- Evtl. IP Einstellungen in settings.json anpassen
- Kontrolle ob Target erreichbar
- [in VSCode] F1 -> Run Task -> tcb-build
- Warten bis 'Build command successfully executed!'
- F1 -> Run Task -> tcb-deploy
  - "ClimateProdTest-TCB-CUSTOM" auswählen


