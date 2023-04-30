#Requires AutoHotkey v2.0

#SingleInstance Force

#Include "./CredentialManager.ahk"
#Include "./HttpPost.ahk"

CallHomeAssistant(path, data) {
    if (cred := CredRead("HomeAssistant")) {
        return HttpPost(cred.username . path, cred.password, data)
    } else {
        MsgBox "No credential named 'HomeAssistant' was found in the Credential Manager"
        return 418
    }
}