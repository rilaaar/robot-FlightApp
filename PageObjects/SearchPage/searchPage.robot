*** Settings ***
Resource                    ../Base/base.robot
Resource                    ../LoginPage/loginPage.robot
Variables                   searchPageLocators.yaml

*** Variables ***
${VALID_CODEBOOKING}        DA935


*** Keywords ***
Go to Search Page
    Wait Until Element Is Visible    ${searchPageDirec_searchPage}
    Click Element                    ${searchPageDirec_searchPage}
    Wait Until Element Is Visible    ${verifyFieldSearch_searchPage}

Input Flight Number
    [Arguments]                     ${flightNumber}
    Input Text                      ${fieldInputFlightNum_searchPage}    ${flightNumber}

Click Button Search 
    Click Element                   ${btnSearchFilghtNum_searchPage} 

Verify Schedule Booking 
    Wait Until Element Is Visible   ${verifyScheduleBooking}


Input Valid Flight Number
    [Arguments]     ${flightNumber}=${VALID_CODEBOOKING}
    Input Flight Number             ${flightNumber}