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
    Input Text                     ${inputEmail}  ${studentEmail}
    Wait Until Element Is Visible  ${clickGender}
    Execute JavaScript             window.scrollBy(0,3000) 
    Click Element                  ${clickGender}
    Input Text                     ${inputMobile}  ${Mobile}
    Wait Until Element Is Visible  ${selectdob}
    Click Element                  ${selectdob}
    Wait Until Element Is Visible  ${Wait Until Element Is Visible}
    Click Element                  ${selectmonth}
    Press Keys                     ${selectmonth}  August
    Click Element                  ${selectyear}
    Press Keys                     ${selectyear}  2001
    Click Element                  ${selectday}     
    Input Text                     ${inputSubjects}  ${Subject}
    Press Keys                     ${inputSubjects}  RETURN
    Execute JavaScript             document.getElementById("fixedban").remove();
    Execute JavaScript             document.querySelector("footer").remove();
    Click Element                  ${clickHobbies}
    Choose File                    ${choosefile}  D:/DEMOrobotframework/mchau.jpg
    Input Text                     ${inputAddress}  ${Address}
    Click Element                  ${selectState}
    Click Element                  ${clickState}
    Click Element                  ${selectCity}
    Click Element                  ${clickCity}
    
Verify Form
    ${actualResult}=  Get Text         ${gtextName}
    Should Be Equal   ${actualResult}  ${studentName}
    ${actualResult}=  Get Text         ${gtextEmail}
    Should Be Equal   ${actualResult}  ${studentEmail}
    ${actualResult}=  Get Text         ${gtextGender}
    Should Be Equal   ${actualResult}  ${Gender}
    ${actualResult}=  Get Text         ${gtextMobile}
    Should Be Equal   ${actualResult}  ${Mobile}
    ${actualResult}=  Get Text         ${gtextDoB}
    Should Be Equal   ${actualResult}  ${DateofBirth}
    ${actualResult}=  Get Text         ${gtextSubjects}
    Should Be Equal   ${actualResult}  ${Subject}
    ${actualResult}=  Get Text         ${gtextHobbies}
    Should Be Equal   ${actualResult}  ${Hobbies}
    ${actualResult}=  Get Text         ${gtextPicture}
    Should Be Equal   ${actualResult}  ${Picture}
    ${actualResult}=  Get Text         ${gtextAddress}
    Should Be Equal   ${actualResult}  ${Address}
    ${actualResult}=  Get Text         ${gtextSaC}
    Should Be Equal   ${actualResult}  ${State&City}
