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
    Wait Until Element Is Visible    xpath://input[@id='dateOfBirthInput']
    Click Element                    xpath://input[@id='dateOfBirthInput']
    Wait Until Element Is Visible    xpath://div[@class='react-datepicker__month-container']
    Click Element                    xpath://div[@class='react-datepicker__day react-datepicker__day--027'] 
    Input Text                       xpath://input[@id='subjectsInput']  student
    Click Element                    xpath://label[@for='hobbies-checkbox-1']
    Choose File                      xpath://input[@id='uploadPicture']  D:/DEMOrobotframework/mchau.jpg
    Input Text                       xpath://textarea[@placeholder="Current Address"]  155/5 Hoàng Văn Thụ
    Execute JavaScript               document.getElementById("fixedban").remove();
    Execute JavaScript               document.querySelector("footer").remove();
    Click Element                    xpath://div[contains(text(), 'Select State')]
    Click Element                    xpath://div[contains(text(), 'NCR')]
    Click Element                    xpath://div[contains(text(), 'Select City')]
    Click Element                    xpath://div[contains(text(), 'Delhi')]
    Click Element                    xpath://button[@type='submit']
    Click Element                    xpath://button[@id="closeLargeModal"]
          
