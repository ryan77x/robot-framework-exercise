*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Click Forget Password
    Wait Until Page Contains  Reset My Password  timeout=1
    Input Email     admin@phptravels.com
    Click Reset My Password
    Wait Until Page Contains        New Password sent to admin@phptravels.com, Kindly check email.  timeout=2
    [Teardown]    Close Browser
