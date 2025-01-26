*** Settings ***
Resource            ../PageObjects/Base/base.robot
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot

Test Setup          Run Keyword    Open Flight Application
Test Teardown       Close Flight Application



*** Test Cases ***
User Should be able to login with valid data
    Login With Valid Credentials
    Verify User active name

User Failed Login with invalid data
    Login With Invalid Credentials
    Verify User Stay in Login Screen 