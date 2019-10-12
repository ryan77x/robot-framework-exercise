*** Settings ***
Documentation     A test suite with a single test for valid login.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Input Username    admin@phptravels.com
    Input Password    demoadmin
    Submit Credentials
    Wait Until Page Contains  Dashboard   timeout=2
    Welcome Page Should Be Open
    [Teardown]    Close Browser
