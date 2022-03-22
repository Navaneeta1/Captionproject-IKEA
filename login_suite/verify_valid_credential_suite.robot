*** Settings ***
Documentation      This suite will handles all the test cases related to valid
...     credential test for IKEA. Test case - TC_OH_2
Resource      ../Resource/Base/Common_functionality.resource

Test Setup      Launch Browser And Navigate To URL
#Test Teardown      Close Browser

*** Test Cases ***
Verify Valid Credential Test
    Click Element    xpath=//a[@aria-label='My Profile']//span[@class='hnf-btn__inner']
    Click Element    xpath=//a[@class='btn btn--small btn--primary-inverse']
    Input Text    id=username    nav@gmail.com
    Input Password    id=password    1Asdfgh@
    Click Element    xpath=//span[contains(text(),'Continue')]
    Page Should Contain    Products
    Capture Page Screenshot