*** Settings ***
Library         SeleniumLibrary
Library         String
Resource        Variable.robot
Resource        Keyword.robot
Suite Setup     Suite Setup
Suite Teardown  Close Browser

*** Test Cases ***
Access to Forms page
    [Tags]    practiceform    demoQA 
    Access Forms
    Input form
    Click Element  ${submit}
    Verify Form
    Click Element  ${close}
    
Register
    [Tags]    Register    demoQA
    Access Book Store Application
    Register to Book Store
    verify Register

Login
    [Tags]    Login    demoQA
    login
    verify login
    Page Should Contain Element    ${BtLogout}

    