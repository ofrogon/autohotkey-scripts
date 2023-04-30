#Requires AutoHotkey v2.0

#SingleInstance Force

#Include "./CallHomeAssistant.ahk"
#Include "./TrayNotification.ahk"

HomeAssistantSwitchToggle(switchId, displayName) {
    dataPart1 := "{`"entity_id`": `""
    dataPart2 := "`"}"
    data := dataPart1 . switchId . dataPart2

    status := CallHomeAssistant("api/services/switch/toggle", data)

    if (status == 200) {
        TrayNotification("Home Assistant", "Toggle Switch " . displayName)
    } else {
        TrayNotification("Home Assistant", "Échec de la commande avec en retour: " . status, 10000)
    }
}