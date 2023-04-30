#Requires AutoHotkey v2.0

for n, param in A_Args  ; For each parameter:
{
    MsgBox "Parameter number " n " is " param "."
}

MsgBox A_Args[1] " " A_Args[2] "      Length: " A_Args.Length