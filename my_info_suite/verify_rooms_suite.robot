*** Comments ***
Create testcase then connet with template & excel
1. Click on profile
2. Click on Login
3. Enter Email id
4. Enter Password
5. Click on Continue
6. Click on Rooms
7. Click on Living Room
8. Click on decorative lighting
9. Click on Indoor lighting
10. Select 2 items for comparing
11. Click on compare products
12. Select 1 item
13. Add to shopping cart


*** Settings ***
Documentation   This suite will test the Rooms  details
Resource      ../Resource/Base/Common_functionality.resource

Test Setup      Launch Browser And Navigate To URL
#Test Teardown       Close Browser

Test Template       Verify Rooms Template
*** Test Cases ***
TC1             Rooms
TC2             Room

*** Keywords ***
Verify Rooms Template
    [Arguments]
    Click Element    xpath=//a[@aria-label='My Profile']//span[@class='hnf-btn__inner']
    Click Element    xpath=//a[@class='btn btn--small btn--primary-inverse']
    Input Text    id=username    nav@gmail.com
    Input Password    id=password    1Asdfgh@
    Click Element    xpath=//span[contains(text(),'Continue')]
    Click Element    link=Rooms
    Click Element    xpath=//span[contains(text(),'Living room')]
    Click Element    xpath=//span[contains(text(),'Lighting')]
    Click Element    xpath=//span[contains(text(),'Decorative lighting')]
    Click Element    xpath=//span[contains(text(),'Indoor lighting')]
    Click Element    id=plp-compact-compare-checkbox-20504844
    Click Element    id=plp-compact-compare-checkbox-80421351
    Click Element    id=//span[contains(text(),'Compare')
    Click Element    xpath=//span[contains(text(),'AKTERPORT')]
    Click Element    xpath=//span[contains(text(),'Add to shopping cart')]
