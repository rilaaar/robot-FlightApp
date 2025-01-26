*** Settings ***
Documentation        Execute scenario user Reservation Flight Ticket

Resource            ../PageObjects/Base/base.robot
Resource            ../PageObjects/HomePage/homePage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Resource            ../PageObjects/BookingPage/bookingPage.robot

Test Setup          Run Keywords    Open Flight Application    
...                 AND     Login With Valid Credentials
Test Teardown       Close Flight Application


*** Test Cases ***
User Succes Booking Flight Ticket
    Go to Booking Page
    Verify Book Flight Page
    Select From City
    Select To City
    Select Class
    Select Start Date
    Select End Date
    Verify Choose Date Screen
    Choose Date 
    Click Button OK 
    Verify Confirm Booking Page