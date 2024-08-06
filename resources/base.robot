*** Settings ***
Library    AppiumLibrary

Resource    steps.robot

*** Keywords ***
#ganchos
Abrir App
        Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2 
    ...                 platformName=Android
    ...                 platformVersion=11
    ...                 deviceName=emulador do nuclone
    ...                 udid=emulator-5554
    ...                 app=${EXECDIR}/app/nuclone.apk

#Checkpoint para gatantir que estamos no lugar certo
    Wait Until Element Is Visible    accessibility_id=card-hero    timeout=50

Fechar App
    Capture Page Screenshot
    Close Application
