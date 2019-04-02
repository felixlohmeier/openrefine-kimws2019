#!/bin/bash
# Skelett für ein Shell-Script zur Verarbeitung von DOAJ mit openrefine-client

# Da wir jetzt direkt auf dem Server arbeiten entfällt die Angabe von Host und Port. Außerdem ist das Programm openrefine-client in /usr/bin installiert und daher direkt mit Name aufrufbar.

# 0. Vorhandenes Projekt mit gleichem Namen löschen (damit Script mehrfach aufgerufen werden kann)
openrefine-client --delete "projektname" # hier Projektname eintragen

# 1. Projekt anlegen
openrefine-client # hier bitte Ergänzen aus Aufgabe 1a

# 2. Daten transformieren
openrefine-client # hier bitte Ergänzen aus Aufgabe 1b

# 3. Daten im Format CSV exportieren
openrefine-client # hier bitte Ergänzen aus Aufgabe 1c

# 4. Am Ende lassen wir uns alle Projekte auf dem Server ausgeben
openrefine-client --list
