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
    Click Element                    ${startDate_bookingPage}
    Wait Until Element Is Visible    ${verifyChooseDate_bookingPage}
    Click Element                    ${chooseDate_bookingPage}
    Click Element                    ${btnOkChooseDate_bookinPage}

Select End Date
    Click Element                    ${endDate_bookingPage}
    Wait Until Element Is Visible    ${verifyChooseDate_bookingPage}
    Click Element                    ${chooseDate_bookingPage}
    Click Element                    ${btnOkChooseDate_bookinPage}

Click just Flight Option 
    Click Element                    ${justFlightOps_bookinPage}      

Click +- One day Option 
    Click Element                    ${oneDayOps_bookinPage}

Click Button Confirm Booking
    Click Element                    ${btnBooking_bookinPage}

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