*** Settings ***
Library    SeleniumLibrary
Library    String
Suite Setup    Open Browser    https://demoqa.com/    chrome
Suite Teardown    Close Browser

*** Test Cases ***
Access to Forms page
    Maximize Browser Window
    Wait Until Element Is Visible    xpath://h5[text() = 'Forms']
    Execute JavaScript               window.scrollBy(0,3000)
    Click Element                    xpath://h5[text() = 'Forms']
    Click Element                    xpath://span[contains(text(),'Practice Form')] 
    Input Text                       xpath://input[@id="firstName"]  Nguyễn
    Input Text                       xpath://input[@id="lastName"]  Minh Châu
    Input Text                       xpath://input[@id="userEmail"]  mchau3801@gmail.com
    Wait Until Element Is Visible    xpath://label[@for='gender-radio-1']
    Execute JavaScript               window.scrollBy(0,3000) 
    Click Element                    xpath://label[@for='gender-radio-1']
    Input Text                       xpath://input[@id="userNumber"]  0395929398
    Clear Element Text               xpath://input[@id="dateOfBirthInput"]
    Input Text                       xpath://input[@id="dateOfBirthInput"]  03 Mar 2001 
    Click Element                    xpath://input[@id="hobbies-checkbox-1"]
    Input Text                       xpath://textarea[@placeholder="Current Address"]  155/5 Hoàng Văn Thụ
    Click Button                     xpath://button[@id="submit"]
    Click Button                     xpath://button[@id="closeLargeModal"]
          
