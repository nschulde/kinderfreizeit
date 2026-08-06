@echo off
rem ============================================================
rem  Lokale Vorschau des Dashboards
rem
rem  Doppelklick startet einen kleinen Webserver in diesem Ordner
rem  und oeffnet die Seite im Browser.
rem
rem  Warum ein Server und nicht die Datei direkt oeffnen?
rem  Bei "file://" blockiert der Browser das Laden des Google
rem  Sheets. Ueber "http://localhost" funktioniert es genauso
rem  wie spaeter auf GitHub Pages.
rem
rem  Beenden: dieses Fenster schliessen oder Strg+C druecken.
rem ============================================================

cd /d "%~dp0"

echo.
echo  Dashboard laeuft auf:  http://localhost:8000/index.html
echo  Aenderungen an index.html: Datei speichern, dann im Browser F5.
echo  Beenden mit Strg+C.
echo.

start "" http://localhost:8000/index.html
python -m http.server 8000
