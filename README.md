## HomeAssistant

### Requirements

1. Create in the Windows Credential Manager, a `generic credential` with:
    <br/>`Internet or network address` = `HomeAssistant`;
    <br/>`User name` = \<your server url\>; (example `https://hass.some.url/`)
    <br/>`Password` = \<Long-Lived Access Tokens\>
2. Compile the script `HomeAssistantToggle.ahk` to exe

### Run - Option 1

Call `HomeAssistantToggle.exe` with:
1. The switch name as it is in HomeAssistant.
2. A human-readable title.

ex:
```cmd
HomeAssistantToggle.exe "switch.office", "Office"
```

### Run - Option 2

> From Razer Synapse, you can't run `.exe` files with parameters. You will then need to create many `.exe` for each switch.

You can create a new `.ahk` script file in a folder named `specifics`.

This is the template:

```ahk
#Requires AutoHotkey v2.0

#SingleInstance Force

#Include "../Lib/HomeAssistantSwitchToggle.ahk"

HomeAssistantSwitchToggle("switch.office", "Office")
```