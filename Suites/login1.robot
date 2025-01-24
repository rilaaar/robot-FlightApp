*** Settings ***
Resource            ../PageObjects/Base/base.robot
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot

Test Setup          Run Keyword    Open Flight Application
Test Teardown       Close Flight Application

*** Variables ***
${VALID_EMAIL}               support@ngendigital.com
${VALID_PASSWORD}            abc123


*** Test Cases ***
User Should be able to login with valid data
    Login With Valid Credentials
    Verify User active name