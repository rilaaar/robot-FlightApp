*** Settings ***
Documentation        Execute scenario user Sign Out Account

Resource            ../PageObjects/Base/base.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Resource            ../PageObjects/LogoutPage/logOutPage.robot

Test Setup          Run Keywords    Open Flight Application    
...                 AND     Login With Valid Credentials
Test Teardown       Close Flight Application


*** Test Cases ***
User Sign Out Account 
    Verify User active name 
    Click Button Sign Out
    User Stay In HomePage 