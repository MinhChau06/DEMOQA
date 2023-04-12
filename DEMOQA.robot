*** Settings ***
Library         SeleniumLibrary
Library         String
Library         DateTime
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
    Sleep  3s
    Click Element  ${close}
*** Test Cases ***
Register
    [Tags]    Register    demoQA
    Register to Book Store
    verify Register
    Sleep  3s

Login
    [Tags]    Login    demoQA
    login
    verify login
    sleep  2s
    Page Should Contain Element    ${BtLogout}

#robot -d Results -i Register DEMOQA.robot: chạy 1 test case với tag
#robot -d Results -i demoQA DEMOQA.robot : chạy 1 test suite với tag
    