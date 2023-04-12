*** Settings ***
Library    SeleniumLibrary
Resource    Variable.robot

*** Keywords ***
Suite Setup
    Open Browser    https://demoqa.com/    chrome
    Access Book Store Application

Access Book Store Application
    Maximize Browser Window
    Wait Until Element Is Visible  ${BookStoreApplication}
    Execute JavaScript             window.scrollBy(0,3000)
    Click Element                  ${BookStoreApplication}
    sleep  3s
Register to Book Store
    Execute JavaScript             document.getElementById("fixedban").remove();
    Execute JavaScript             document.querySelector("footer").remove();
    Click Element                  ${login}
    Click Element                  ${NewUser}
    Input Text                     ${inputFirstNameR}  Nguyễn
    Input Text                     ${inputLastNameR}  Châu
    Input Text                     ${inputUsernameR}  ${userName}
    Input Password                 ${inputPasswordR}  ${Password}
    sleep  2s
    Wait Until Element Is Visible  ${clickiFrame}
    Execute JavaScript             window.scrollBy(0,3000)
    Click Element                  ${clickiFrame}
    sleep  15s
    Wait Until Element Is Visible  ${BtRegister}
    Execute JavaScript             window.scrollBy(0,3000)
    Click Element                  ${BtRegister}  
verify Register
    sleep  1s
    ${message}=  Handle Alert  action=ACCEPT
    Should Be Equal    ${message}    ${exAlertMessage}


login   
    Click Element       ${login}
    Input Text          ${inputUsernameL}  ${userName}
    Input Text          ${inputPasswordL}  ${Password}
    Sleep    2s
    Click Button        ${BtLogin}
verify login
    ${actualResult}=  Get Text         ${gtextUserName}
    Should Be Equal   ${actualResult}  ${userName}
    
Access Forms
    Maximize Browser Window
    Wait Until Element Is Visible  ${form}
    Execute JavaScript             window.scrollBy(0,3000)
    Click Element                  ${form}

Input form
    Click Element                  ${practiceForm}
    Input Text                     ${inputFirstNameF}  Nguyễn
    Input Text                     ${inputLastNameF}  Châu
    Input Text                     ${inputEmail}  ${studentEmail}
    Wait Until Element Is Visible  ${clickGender}
    Execute JavaScript             window.scrollBy(0,3000) 
    Click Element                  ${clickGender}
    Input Text                     ${inputMobile}  ${Mobile}
    Wait Until Element Is Visible  ${selectdob}
    Click Element                  ${selectdob}
    Wait Until Element Is Visible  ${WUEIV}
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
