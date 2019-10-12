*** Settings ***
Documentation     A test suite with a single test for veriying the correct message is displayed when invalid email format is provided.
...
...               This test has a workflow that is created using keywords in
...               the imported resource file.
Resource          resource.robot

*** Test Cases ***
Invalid email format message
    Open Browser To Login Page
    Input Username    admin
    Input Password    demoadmin
    Submit Credentials
    Wait Until Page Contains  The Email field must contain a valid email address.  timeout=2
    [Teardown]    Close Browser
