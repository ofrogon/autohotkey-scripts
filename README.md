## HomeAssistant

### Requirements

1. Create in the Windows Credential Manager, a credential with:
    <br/>`Internet or network address` = `HomeAssistant`;
    <br/>`User name` = \<your server url>;
    <br/>`Password` = \<Long-Lived Access Tokens>
2. Compile the script `HomeAssistantToggle.ahk` to exe

### Run

Call `HomeAssistantToggle.exe` with:
1. The switch name as in HomeAssistant.
2. A human readable title.

ex:
```cmd
HomeAssistantToggle.exe "switch.bureau", "Bureau"
```