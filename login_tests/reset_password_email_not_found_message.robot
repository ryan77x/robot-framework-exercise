*** Settings ***
Documentation     A test suite with a single test for veriying the correct message is displayed when provided email address does not exist in database during password recovery.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Email not found message during password recovery
    Open Browser To Login Page
    Click Forget Password
    Wait Until Page Contains  Reset My Password  timeout=1
    Input Email     someemail
    Click Reset My Password
    Wait Until Page Contains        Email Not Found  timeout=2
    [Teardown]    Close Browser
