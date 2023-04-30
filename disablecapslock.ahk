#Requires AutoHotkey v2.0

; Black magic to handle key press in AutoHotkey

CapsLock::
{
    Send "{vk3A down}"
    ; ControlSend "{vk3A down}",, "ahk_exe Discord.exe"
    
    Sleep 100
    return
}

CapsLock up::
{
    Send "{vk3A up}"
    ; ControlSend "{vk3A up}",, "ahk_exe Discord.exe"
    return
}
