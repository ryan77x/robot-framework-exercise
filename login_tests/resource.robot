*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           SeleniumLibrary

*** Variables ***
${SERVER}         www.phptravels.net/admin
${BROWSER}        Chrome
${DELAY}          0.2
${VALID USER}     admin@phptravels.com
${VALID PASSWORD}   demoadmin
${LOGIN URL}      https://${SERVER}
${WELCOME URL}    https://${SERVER}
${ERROR URL}      https://${SERVER}
${FORGET PASSWORD URL}  https://${SERVER}

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Administator Login

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    email    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    password    ${password}

Input Email
    [Arguments]    ${email}
    Input Text    resetemail    ${email}

Submit Credentials
    Click Button    Login

Click Forget Password
    Click Link   link-forgot  

Click Back Button
    Click Button    Back  

Click Reset My Password
    Click Button   Reset My Password  

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    Dashboard

Forget Password Page Should Be Open
    Location Should Be    ${FORGET PASSWORD URL}
    Title Should Be    Administator Login   
