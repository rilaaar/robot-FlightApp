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
User Success Booking Flight Ticket From New York To London
    Go to Booking Page
    Verify Book Flight Page
    Select From New York City
    Select To London City 
    Select Economy Class
    Select Start Date
    Select End Date
    Verify Choose Date Screen
    Choose Date 
    Click Button OK 
    Verify Confirm Booking Page
    Verify From City
    Verify To City
    Select Price
    Click Button Confirm 
    Verify ID Reservation Ticket 