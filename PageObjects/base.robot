*** Settings ***
Library                AppiumLibrary

*** Variables ***
${REMOTE_URL}        http://127.0.0.1:4723/wd/hub


*** Keywords ***
Open Flight Application
    Open Application             remote_url=${REMOTE_URL}
    ...    platformName=Android    
    ...    platformVersion=12.0    
    ...    deviceName=emulator-5554   
    ...    appPackage=com.example.myapplication    
    ...    appActivity=com.example.myapplication.MainActivity

Close Flight Application
    Close Application
