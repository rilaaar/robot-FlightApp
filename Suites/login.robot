*** Settings ***
Library                     AppiumLibrary

*** Variables ***


*** Keywords ***
Open Flight Application
    Open Application         remote_url=http://127.0.0.1:4723/wd/hub     
    ...    platformName=Android     
    ...    platformVersion=11.0     
    ...    deviceName=emulator-5554     
    ...    app=D:\\Ra\\Sanbercode\\robot-FlightApp\\Apps\\flightApp (2).apk

Verify Home Screen Appears 
    Wait Until Element Is Visible     locator=com.example.myapplication:id/imageView4

Close Flight Application
    Close Application 

*** Test Cases ***
User Should be able to login with valid data 
    Open Flight Application
    Verify Home Screen Appears
    Close Flight Application 