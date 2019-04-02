#!/bin/bash
# Skelett für ein Shell-Script zur Verarbeitung von DOAJ mit openrefine-client
echo "=== Automatisierte Verarbeitung von DOAJ ==="
# Startzeit
echo "Beginn: $(date)"
echo ""

# 0. Vorhandenes Projekt mit gleichem Namen löschen (damit Script mehrfach aufgerufen werden kann)
echo "Vorhandenes Projekt löschen..."
# Da wir jetzt direkt auf dem Server arbeiten entfällt die Angabe von Host und Port. Außerdem ist das Programm openrefine-client in /usr/bin installiert und daher direkt mit Name aufrufbar.
openrefine-client --delete "projektname" # hier Projektname eintragen
echo ""

# 1. Projekt anlegen
echo "Projekt anlegen..."
openrefine-client # hier bitte Ergänzen aus Aufgabe 1a
echo ""

# 2. Daten transformieren
echo "Daten transformieren..."
openrefine-client # hier bitte Ergänzen aus Aufgabe 1b
echo ""

# 3. Daten im Format CSV exportieren
echo "Daten exportieren..."
openrefine-client # hier bitte Ergänzen aus Aufgabe 1c
echo ""

# 4. Am Ende lassen wir uns alle Projekte auf dem Server ausgeben
echo "Projekte auf dem Server..."
openrefine-client --list
echo ""

# Ende
echo "Ende: $(date)"
