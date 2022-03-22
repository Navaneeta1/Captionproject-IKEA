*** Settings ***
Documentation      This suite will handles all the test cases related to invalid
...     credential test for IKEA. Test case - TC_OH_3,4,5
Resource      ../Resource/Base/Common_functionality.resource

Test Setup      Launch Browser And Navigate To URL
Test Teardown      Close Browser

Test Template       Verify Invalid Credential Template

*** Test Cases ***
TC1       Nat      1Asdfghh     Invalid credentials
TC2       Nav     Asdfgh@        Invalid credentials
TC3       ${EMPTY}      1Asdfgh@    Please enter your Email or Verified mobile number
TC4       Nav       ${EMPTY}       Sorry, we can't log you in without a password.


*** Keywords ***
Verify Invalid Credential Template
    Input Text    id=username    nav@gmail.com
    Input Password    id=password    1Asdfgh@
    Click Element    xpath=//span[contains(text(),'Continue')]
    Element Text Should Be    xpath=//span[contains(text(),'Please enter your Email or Verified mobile number ')]    ${expected_error}