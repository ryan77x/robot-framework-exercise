*** Settings ***
Documentation     A test suite with a single test for going to password recover page by clicking forget password link 
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Link to password recovery page
    Open Browser To Login Page
    Click Forget Password
    Wait Until Page Contains  Reset My Password  timeout=1
    [Teardown]    Close Browser
