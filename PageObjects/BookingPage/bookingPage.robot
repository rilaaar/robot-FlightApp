*** Settings ***
Resource            ../LoginPage/loginPage.robot
Variables           bookingPageLocators.yaml
Variables           bookingConfirmPageLocators.yaml

#Library              datetime

*** Variables ***
#${TARGET_DATE}    ${DateTime.AddDaysToDate("2019-08-01", 0, result_format="dd MMMM yyyy")}

*** Keywords ***
Go to Booking Page
    Wait Until Element Is Visible    ${bookPageDirec_bookingPage}
    Click Element                    ${bookPageDirec_bookingPage}

Verify Book Flight Page
    Wait Until Element Is Visible    ${verifyBookFlightPage_bookingPage}

Select Departure From New York City
    Click Element                    ${fromCity_bookinPage}
    Wait Until Element Is Visible    ${newyorkCity_bookinPage}
    Click Element                    ${newyorkCity_bookinPage}

Select Destination To London City 
    Click Element                    ${toCity_bookinPage}
    Wait Until Element Is Visible    ${londonCity_bookinPage}
    Click Element                    ${londonCity_bookinPage}

Select Economy Class
    Click Element                    ${class_bookingPage}
    Wait Until Element Is Visible    ${economyClass_bookinPage}
    Click Element                    ${economyClass_bookinPage}

Select Start Date
    Wait Until Element Is Visible    ${startDate_bookingPage}
    Click Element                    ${startDate_bookingPage}

Select End Date
    Wait Until Element Is Visible    ${endDate_bookingPage}
    Click Element                    ${endDate_bookingPage}

Verify Choose Date Screen
    Click Element                    ${verifyChooseDate_bookingPage}

Choose Date 
    Click Element                    ${chooseDate_bookingPage}

Click Button OK 
    Click Element                    ${btnOkChooseDate_bookinPage}

Verify Confirm Booking Page
    Wait Until Element Is Visible    ${verifyConfirmBookingPage_bookingConfirmPage}

Verify Departure City
    Wait Until Element Is Visible    ${verifyFromCity_bookingConfirmPage}

Verify Destination City
    Wait Until Element Is Visible    ${verifyToCity_bookingConfirmPage}

Select Price $1860
    Click Element                    ${price1__bookingConfirmPage}

Click Button Confirm 
    Click Element                    ${btnConfirm__bookingConfirmPage}

Verify ID Reservation Ticket 
    Wait Until Element Is Visible    ${verifyReservationNumber_bookingConfirmPage}