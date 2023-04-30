#Requires AutoHotkey v2.0

TrayNotification(title, message, sleepTime := 3000) {
    TrayTip message, title
    Sleep sleepTime
    _hideTrayTip()
}

_hideTrayTip() {
    TrayTip
}