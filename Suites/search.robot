*** Settings ***
Documentation        Execute scenario user Check Schedule Reservation Flight

Resource            ../PageObjects/Base/base.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Resource            ../PageObjects/SearchPage/searchPage.robot

Test Setup          Run Keywords    Open Flight Application    
...                 AND     Login With Valid Credentials
Test Teardown       Close Flight Application


*** Test Cases ***
Success Check Schedule FLight with Valid Code
    Go to Search Page
    Input Valid Flight Number
    Click Button Search 
    Verify Schedule Booking 

Failed Check Schedule FLight with Invalid Code
    Go to Search Page
    Input Invalid Flight Number
    Click Button Search 
    Stay In Search Page Screen 