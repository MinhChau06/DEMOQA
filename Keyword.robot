*** Settings ***
Library    SeleniumLibrary
Resource    Variable.robot

*** Keywords ***
Suite Setup
    Open Browser    https://demoqa.com/    chrome
    Maximize Browser Window

Access Book Store Application
    Wait Until Element Is Visible  ${MainPage}
    Click Element                  ${MainPage}
    Wait Until Element Is Visible  ${BSA}
    Execute JavaScript             window.scrollBy(0,3000)
    Click Element                  ${BSA}
Register to Book Store
    Execute JavaScript             document.getElementById("fixedban").remove();
    Execute JavaScript             document.querySelector("footer").remove();
    Click Element                  ${Login}
    Click Element                  ${NewUser}
    Input Text                     ${InputFirstNameR}  ${FName}
    Input Text                     ${InputLastNameR}   ${LName}
    Input Text                     ${InputUsernameR}   ${UserName}
    Input Password                 ${InputPasswordR}   ${Password}
    Sleep  2s
    Wait Until Element Is Visible  ${ClickiFrame}
    Execute JavaScript             window.scrollBy(0,3000)
    Click Element                  ${ClickiFrame}
    Sleep  20s
    Wait Until Element Is Visible  ${BtRegister}
    Execute JavaScript             window.scrollBy(0,3000)
    Click Element                  ${BtRegister} 
Verify Register
    ${Message}=  Handle Alert  action=ACCEPT
    Should Be Equal    ${Message}    ${ExAlertMessage}
    Sleep  2s

Login   
    Click Element       ${Login}
    Input Text          ${InputUsernameL}  ${UserName}
    Input Text          ${InputPasswordL}  ${Password}
    Sleep  2s
    Click Button        ${BtLogin}
    Sleep  5s
Verify login
    ${ActualResult}=  Get Text         ${GtextUserName}
    Should Be Equal   ${ActualResult}  ${UserName}
    Sleep  2s
    
Access Forms
    Wait Until Element Is Visible  ${Form}
    Execute JavaScript             window.scrollBy(0,3000)
    Click Element                  ${Form}

Input form
    Click Element                  ${PracticeForm}
    Input Text                     ${InputFirstNameF}  ${FName}
    Input Text                     ${InputLastNameF}   ${LName}
    Input Text                     ${InputEmail}       ${StudentEmail}
    Wait Until Element Is Visible  ${ClickGender}
    Execute JavaScript             window.scrollBy(0,3000) 
    Click Element                  ${ClickGender}
    Input Text                     ${InputMobile}      ${Mobile}
    Wait Until Element Is Visible  ${Selectdob}
    Click Element                  ${Selectdob}
    Wait Until Element Is Visible  ${Wait}
    Click Element                  ${Selectmonth}
    Press Keys                     ${Selectmonth}      ${M}
    Click Element                  ${Selectyear}
    Press Keys                     ${Selectyear}       ${Y}
    Click Element                  ${Selectday}     
    Input Text                     ${InputSubjects}    ${Subject}
    Press Keys                     ${InputSubjects}  RETURN
    Execute JavaScript             document.getElementById("fixedban").remove();
    Execute JavaScript             document.querySelector("footer").remove();
    Click Element                  ${ClickHobbies}
    Choose File                    ${Choosefile}       ${LinkPic}
    Input Text                     ${InputAddress}     ${Address}
    Click Element                  ${SelectState}
    Click Element                  ${ClickState}
    Click Element                  ${SelectCity}
    Click Element                  ${ClickCity}
    Click Element                  ${submit}
    
Verify Form
    ${actualResult}=  Get Text         ${gtextName}
    Should Be Equal   ${actualResult}  ${StudentName}
    ${actualResult}=  Get Text         ${gtextEmail}
    Should Be Equal   ${actualResult}  ${studentEmail}
    ${actualResult}=  Get Text         ${gtextGender}
    Should Be Equal   ${actualResult}  ${Gender}
    ${actualResult}=  Get Text         ${gtextMobile}
    Should Be Equal   ${actualResult}  ${Mobile}
    ${actualResult}=  Get Text         ${gtextDoB}
    Should Be Equal   ${actualResult}  ${DoB}
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
    Sleep  2s
    Click Element     ${Close}


#robot -d Results -i Register practiceform DEMOQA.robot: chạy 1 test case với tag
#robot -d Results -i demoQA DEMOQA.robot : chạy 1 test suite với tag

