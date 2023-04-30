#Requires AutoHotkey v2.0

#SingleInstance Force

#Include "Lib/HomeAssistantSwitchToggle.ahk"

if (A_Args.Length == 2) {
    HomeAssistantSwitchToggle(A_Args[1], A_Args[2])
} else {
    MsgBox "HomeAssistantToggle have been called with " . A_Args.Length " arguments, but require 2."
}