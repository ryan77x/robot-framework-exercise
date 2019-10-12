*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    admin
    Input Password    demoadmin
    Submit Credentials
    Wait Until Page Contains  The 2Email field must contain a valid email address.  timeout=2
    [Teardown]    Close Browser
