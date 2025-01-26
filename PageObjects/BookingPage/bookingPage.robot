*** Settings ***
Resource            ../LoginPage/loginPage.robot
Variables           bookingPageLocators.yaml
Variables           bookingConfirmPageLocators.yaml



*** Keywords ***
Go to Booking Page
    Wait Until Element Is Visible    ${bookPageDirec_bookingPage}
    Click Element                    ${bookPageDirec_bookingPage}

Verify Book Flight Page
    Wait Until Element Is Visible    ${verifyBookFlightPage_bookingPage}

Select From New York City
    Click Element                    ${fromCity_bookinPage}
    Click Element                    ${newyorkCity_bookinPage}

Select To London City 
    Click Element                    ${toCity_bookinPage}
    Click Element                    ${londonCity_bookinPage}

Select Economy Class
    Click Element                    ${class_bookingPage}
    Click Element                    ${enonomyClass_bookinPage}

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

Verify From City
    Wait Until Element Is Visible    ${verifyFromCity_bookingConfirmPage}

Verify To City
    Wait Until Element Is Visible    ${verifyToCity_bookingConfirmPage}

Select Price
    Click Element                    ${price1__bookingConfirmPage}

Click Button Confirm 
    Click Element                    ${btnConfirm__bookingConfirmPage}

Verify ID Reservation Ticket 
    Wait Until Element Is Visible    ${verifyReservationNumber_bookingConfirmPage}