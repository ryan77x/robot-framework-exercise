*** Settings ***
Documentation     A test suite with a single test for veriying the correct message is displayed when invalid credential is provided.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Invalid Login Credentials message
    Open Browser To Login Page
    Input Username    admin@phptravels.com
    Input Password    badpassword
    Submit Credentials
    Wait Until Page Contains  Invalid Login Credentials  timeout=2
    [Teardown]    Close Browser
