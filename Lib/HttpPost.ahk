#Requires AutoHotkey v2.0

#SingleInstance Force

HttpPost(url, pass, data) {
    auth := "Bearer " . pass

    try {
        hObject := ComObject("WinHttp.WinHttpRequest.5.1") ; create WinHttp object
        hObject.Open("POST", url, true) ; open a post event to the specified endpoint
        hObject.SetRequestHeader("Content-Type", "application/json") ; set content header
        hObject.SetRequestHeader("Authorization", auth)
        hObject.Send(data) ; send request with data
        hObject.WaitForResponse()

        return hObject.Status
    } catch Error as err {
        return err.message
    }
}
