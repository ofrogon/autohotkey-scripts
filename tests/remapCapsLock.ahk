#Requires AutoHotkey v2.0

; CapsLock::
; {
;     Send "{vk3A down}"
;     ; ControlSend "{vk3A down}",, "ahk_exe Discord.exe"
    
;     Sleep 100
; }

; CapsLock up::
; {
;     Send "{vk3A up}"
;     ; ControlSend "{vk3A up}",, "ahk_exe Discord.exe"
; }

CapsLock::
{
    ControlSend "{F11}",, "ahk_exe msedge.exe"
}

CapsLock up::
{
    Send "{F11 up}"
    ; ControlSend "{vk3A up}",, "ahk_exe Discord.exe"
}