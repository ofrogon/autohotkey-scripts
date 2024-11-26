#Requires AutoHotkey v2.0

#SingleInstance Force

#Include "Lib/ProcessAndWindows.ahk"

;; Variables
pOutlook := 'C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE'
pOBS := 'C:\Program Files\obs-studio\bin\64bit\obs64.exe'
dOBS := 'C:\Program Files\obs-studio\bin\64bit\'
pToggl := 'C:\Users\alexandre.beaudoin\AppData\Local\TogglTrack\TogglTrack.exe'
pObsidian := 'C:\Users\alexandre.beaudoin\AppData\Local\Programs\obsidian\Obsidian.exe'
pTeams := 'C:\Program Files\WindowsApps\MSTeams_24193.1805.3040.8975_x64__8wekyb3d8bbwe\ms-teams.exe'

<^<!<+m::  ; LCtrl+LAlt+LShift+M
{
    RunIfNew(pOutlook, , "olk.exe") ; Outlook
    RunIfNew(pOBS, dOBS) ; OBS
    Run pToggl . ' start -b False -d "Routine matinale"' ; TOGGL
    RunIfNew(pObsidian) ; Obsidian

    TrayTip "Routine matinale lancée", "Bon matin!"
}

<^<!<+n::  ; LCtrl+LAlt+LShift+N
{
    FocusOnWindow(pTeams) ; Teams
}