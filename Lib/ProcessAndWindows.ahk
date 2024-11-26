; ===========================================================================
; Run a program or switch to it if already running.
;    Target - Program to run. E.g. Calc.exe or C:\Progs\Bobo.exe
;    CurrentWorkingDirectory - Optional working directory for the program.
;    WinTitle - Optional title of the window to activate.
;    TargetAlias - Optional alias for the program.
; ===========================================================================

RunOrActivate(Target, CurrentWorkingDirectory := "", WinTitle := "", TargetAlias := "")
{
    PID := RunIfNew(Target, CurrentWorkingDirectory)

    FocusOnWindow(Target, WinTitle, TargetAlias)
}

; ===========================================================================
; Run a program only if not running.
;    Target - Program to run. E.g. Calc.exe or C:\Progs\Bobo.exe
;    CurrentWorkingDirectory - Optional working directory for the program.
;    TargetAlias - Optional alias for the program.
; ===========================================================================
RunIfNew(Target, CurrentWorkingDirectory := "", TargetAlias := "")
{
    ; Get the filename without a path
    SplitPath Target, &TargetNameOnly

    if (PID := ProcessExist(TargetNameOnly)) {
    }
    else if (PID := ProcessExist(TargetAlias)) {
    }
    else {
        Run Target, CurrentWorkingDirectory, , &PID
    }

    return PID
}

FocusOnWindow(Target, WinTitle := "", TargetAlias := "")
{
    SplitPath Target, &TargetNameOnly

    if (PID := ProcessExist(TargetNameOnly)) {
    }
    else if (PID := ProcessExist(TargetAlias)) {
    }
    else {
        return
    }

    if (WinTitle != "")
    {
        SetTitleMatchMode 2
        WinWait %WinTitle%, , 3
        TrayTip , "Activating Window Title " . WinTitle . " (" . TargetNameOnly . ")"
        WinActivate %WinTitle%
    }
    else
    {
        WinWait "ahk_pid " . PID, , 3
        TrayTip , "Activating PID " . PID . " (" . TargetNameOnly . ")"
        WinActivate "ahk_pid " . PID
    }
}