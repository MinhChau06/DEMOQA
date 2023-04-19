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
    Verify Form
    
Register
    [Tags]    Register    demoQA
    Access Book Store Application
    Register to Book Store
    Verify Register

Login
    [Tags]    Login    demoQA
    Login
    Verify login
    