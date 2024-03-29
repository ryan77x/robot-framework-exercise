*** Settings ***
Documentation     A test suite with a single test for going back to login page by clicking BACK button.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Back button from password recovery page
    Open Browser To Login Page
    Click Forget Password
    Wait Until Page Contains  Reset My Password  timeout=2
    Click Back Button
    Wait Until Page Contains  Login  timeout=1
    [Teardown]    Close Browser
