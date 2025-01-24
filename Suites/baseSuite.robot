*** Settings ***
Resource            ../PageObjects/Base/base.robot

*** Test Cases ***
Success open app
    Open Flight Application
    Close Flight Application