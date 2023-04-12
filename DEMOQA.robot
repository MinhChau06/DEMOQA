*** Settings ***
Library         SeleniumLibrary
Library         String
Library         DateTime
Resource        Variable.robot
Resource        Keyword.robot
Suite Setup     Open Browser    https://demoqa.com/    chrome
Suite Teardown  Close Browser

# *** Test Cases1 ***
# Access to Forms page
#     Access Forms
#     Input form
#     Click Element  ${submit}
#     Verify Form
#     Sleep  3s
#     Click Element  ${close}
*** Test Cases ***
Register to Book Store
    Access Book Store Application
    Register to Book Store
    Click Element  
    