*** Settings ***
Library         SeleniumLibrary
Library         String
Library         DateTime
Resource        Variable.robot
Resource        Keyword.robot
Suite Setup     Open Browser    https://demoqa.com/    chrome
Suite Teardown  Close Browser

*** Test Cases ***
Access to Forms page
    Access Forms
    Input form
    Click Element  ${submit}
    Verify Form
    Click Element  ${close}
