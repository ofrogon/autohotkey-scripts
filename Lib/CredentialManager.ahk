#Requires AutoHotkey v2.0

; from: https://www.autohotkey.com/boards/viewtopic.php?f=83&t=116285

CredRead(name) {
    pCred := 0
    DllCall("Advapi32.dll\CredReadW",
        "Str", name,
        "UInt", 1,
        "UInt", 0,
        "Ptr*", &pCred,
        "UInt"
    )
    if !pCred
        return
    name := StrGet(NumGet(pCred, 8 + A_PtrSize * 0, "UPtr"), 256, "UTF-16")
    username := StrGet(NumGet(pCred, 24 + A_PtrSize * 6, "UPtr"), 256, "UTF-16")
    len := NumGet(pCred, 16 + A_PtrSize * 2, "UInt")
    password := StrGet(NumGet(pCred, 16 + A_PtrSize * 3, "UPtr"), len / 2, "UTF-16")
    DllCall("Advapi32.dll\CredFree", "Ptr", pCred)
    return { name: name, username: username, password: password }
}