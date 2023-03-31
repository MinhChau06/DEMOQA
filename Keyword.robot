*** Settings ***
Library    SeleniumLibrary
Resource    Variable.robot

*** Keywords ***
Access Forms
    Maximize Browser Window
    Wait Until Element Is Visible    ${form}
    Execute JavaScript               window.scrollBy(0,3000)
    Click Element                    xpath://h5[text() = 'Forms']