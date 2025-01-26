*** Settings ***
Resource            ../LoginPage/loginPage.robot
Variables           bookingPageLocators.yaml
Variables           bookingConfirmPageLocators.yaml



*** Keywords ***
Go to Booking Page
    Wait Until Element Is Visible    ${bookPageDirec_bookingPage}

Verify Book Flight Page
    Wait Until Element Is Visible    ${verifyBookFlightPage_bookingPage}

Select From City
    Click Element                    ${fromCity_bookinPage}

Select To City
    Click Element                    ${toCity_bookinPage}

Select Class
    Click Element                    ${class_bookingPage}

Select Start Date
    Click Element                    ${startDate_bookingPage}

Select End Date
    Click Element                    ${endDate_bookingPage}

Verify Choose Date Screen
    Click Element                    ${verifyChooseDate_bookingPage}

Choose Date 
    Click Element                    ${chooseDate_bookingPage}

Click Button OK 
    Click Element                    ${btnOkChooseDate_bookinPage}

Verify Confirm Booking Page
    Wait Until Element Is Visible    ${verifyConfirmBookingPage_bookingConfirmPage}