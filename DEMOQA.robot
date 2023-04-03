*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    Variable.robot
Suite Setup    Open Browser    https://demoqa.com/    chrome
Suite Teardown    Close Browser

*** Test Cases ***
Access to Forms page
    Maximize Browser Window
    Wait Until Element Is Visible    ${form}
    Execute JavaScript               window.scrollBy(0,3000)
    Click Element                    ${form}
    Click Element                    ${practiceForm}
    Input Text                       xpath://input[@id="firstName"]  Nguyễn
    Input Text                       xpath://input[@id="lastName"]  Châu
    Input Text                       xpath://input[@id="userEmail"]  mchau3801@gmail.com
    Wait Until Element Is Visible    xpath://label[@for='gender-radio-1']
    Execute JavaScript               window.scrollBy(0,3000) 
    Click Element                    xpath://label[@for='gender-radio-1']
    Input Text                       xpath://input[@id="userNumber"]  0395929398
    Wait Until Element Is Visible    xpath://input[@id='dateOfBirthInput']
    Click Element                    xpath://input[@id='dateOfBirthInput']
    Wait Until Element Is Visible    xpath://div[@class='react-datepicker__month-container']
    Click Element                    xpath://div[@class='react-datepicker__day react-datepicker__day--027'] 
    Input Text                       xpath://input[@id='subjectsInput']  Student
    Execute JavaScript               document.getElementById("fixedban").remove();
    Execute JavaScript               document.querySelector("footer").remove();
    Click Element                    xpath://label[@for='hobbies-checkbox-1']
    Choose File                      xpath://input[@id='uploadPicture']  D:/DEMOrobotframework/mchau.jpg
    Input Text                       xpath://textarea[@placeholder="Current Address"]  155/5 Hoàng Văn Thụ
    Click Element                    xpath://div[contains(text(), 'Select State')]
    Click Element                    xpath://div[contains(text(), 'NCR')]
    Click Element                    xpath://div[contains(text(), 'Select City')]
    Click Element                    xpath://div[contains(text(), 'Delhi')]
    Click Element                    xpath://button[@type='submit']
    Wait Until Page Contains Element  //div[@class="modal-content"]
    Element Should Be Visible        //div[text()='Thanks for submitting the form']
          
verify
    ${actualResult}=    Get Text    //td[text()='Student Name']//..//td[2]
    Should Be Equal    ${actualResult}    ${studentName}
    ${actualResult}=    Get Text    //td[text()='Student Email']//..//td[2]
    Should Be Equal    ${actualResult}    ${studentEmail}
    ${actualResult}=    Get Text    //td[text()='Gender']//..//td[2]
    Should Be Equal    ${actualResult}    ${Gender}
    ${actualResult}=    Get Text    //td[text()='Mobile']//..//td[2]
    Should Be Equal    ${actualResult}    ${Mobile}
    ${actualResult}=    Get Text    //td[text()='Date of Birth']//..//td[2]
    Should Be Equal    ${actualResult}    ${DateofBirth}
    ${actualResult}=    Get Text    //td[text()='Subjects']//..//td[2]
    Should Be Equal    ${actualResult}    ${Subject}
    ${actualResult}=    Get Text    //td[text()='Hobbies']//..//td[2]
    Should Be Equal    ${actualResult}    ${Hobbies}
    ${actualResult}=    Get Text    //td[text()='Picture']//..//td[2]
    Should Be Equal    ${actualResult}    ${Picture}
    ${actualResult}=    Get Text    //td[text()='Address']//..//td[2]
    Should Be Equal    ${actualResult}    ${Address}
    ${actualResult}=    Get Text    //td[text()='State and City']//..//td[2]
    Should Be Equal    ${actualResult}    ${State&City}
  Click Element                    xpath://button[@id="closeLargeModal"]
