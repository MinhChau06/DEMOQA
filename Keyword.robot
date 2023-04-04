*** Settings ***
Library    SeleniumLibrary
Resource    Variable.robot

*** Keywords ***
Access Forms
    Maximize Browser Window
    Wait Until Element Is Visible  ${form}
    Execute JavaScript             window.scrollBy(0,3000)
    Click Element                  ${form}

Input form
    Click Element                  ${practiceForm}
    Input Text                     ${inputFirstName}  Nguyễn
    Input Text                     ${inputLastName}  Châu
    Input Text                     ${inputEmail}  mchau3801@gmail.com
    Wait Until Element Is Visible  ${clickGender}
    Execute JavaScript             window.scrollBy(0,3000) 
    Click Element                  ${clickGender}
    Input Text                     ${inputMobile}  0395929398
    Wait Until Element Is Visible  ${selectdob}
    Click Element                  ${selectdob}
    Wait Until Element Is Visible  ${Wait Until Element Is Visible}
    Click Element                  ${selectday}
    Input Text                     ${inputSubjects}  English
    Press Keys                     ${inputSubjects}  RETURN
    Execute JavaScript             document.getElementById("fixedban").remove();
    Execute JavaScript             document.querySelector("footer").remove();
    Click Element                  ${clickHobbies}
    Choose File                    ${choosefile}  D:/DEMOrobotframework/mchau.jpg
    Input Text                     ${inputAddress}  155/5 Hoàng Văn Thụ
    Click Element                  ${selectState}
    Click Element                  ${clickState}
    Click Element                  ${selectCity}
    Click Element                  ${clickCity}
    
Verify Form
    ${actualResult}=    Get Text    //td[text()='Student Name']/following-sibling::td
    Should Be Equal    ${actualResult}    ${studentName}
    ${actualResult}=    Get Text    //td[text()='Student Email']/following-sibling::td
    Should Be Equal    ${actualResult}    ${studentEmail}
    ${actualResult}=    Get Text    //td[text()='Gender']/following-sibling::td
    Should Be Equal    ${actualResult}    ${Gender}
    ${actualResult}=    Get Text    //td[text()='Mobile']/following-sibling::td
    Should Be Equal    ${actualResult}    ${Mobile}
    ${actualResult}=    Get Text    //td[text()='Date of Birth']/following-sibling::td
    Should Be Equal    ${actualResult}    ${DateofBirth}
    ${actualResult}=    Get Text    //td[text()='Subjects']/following-sibling::td
    Should Be Equal    ${actualResult}    ${Subject}
    ${actualResult}=    Get Text    //td[text()='Hobbies']/following-sibling::td
    Should Be Equal    ${actualResult}    ${Hobbies}
    ${actualResult}=    Get Text    //td[text()='Picture']/following-sibling::td
    Should Be Equal    ${actualResult}    ${Picture}
    ${actualResult}=    Get Text    //td[text()='Address']/following-sibling::td
    Should Be Equal    ${actualResult}    ${Address}
    ${actualResult}=    Get Text    //td[text()='State and City']/following-sibling::td
    Should Be Equal    ${actualResult}    ${State&City}
