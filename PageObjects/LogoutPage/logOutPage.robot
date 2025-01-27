*** Settings ***
Resource                    ../Base/base.robot
Resource                    ../LoginPage/loginPage.robot
Variables                   logoutPageLocators.yaml

*** Keywords ***
Click Button Sign Out
    Click Element            ${btnLogout_logoutPage}

User Stay In HomePage 
    Wait Until Element Is Visible    ${homePageLogo_logoutPage}