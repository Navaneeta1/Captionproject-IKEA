*** Settings ***
Documentation      This suite handles test case related to Shopping Cart
Resource    ../Resource/Base/Common_functionality.resource



Test Setup      Launch Browser And Navigate To URL
Test Teardown      Close Browser

Test Template       Verify shopping cart Template

*** Test Cases ***
Verify shopping cart Test

*** Keywords ***
Verify shopping cart Template

    Click Element    xpath=//a[@aria-label='My Profile']//span[@class='hnf-btn__inner']
    Click Element    xpath=//a[@class='btn btn--small btn--primary-inverse']
    Input Text    id=username    nav@gmail.com
    Input Password    id=password    1Asdfgh@
    Click Element    xpath=//span[contains(text(),'Continue')]
    Click Element    xpath=//span[@class='hnf-btn__inner js-shopping-cart-icon']
    Click Element    xpath=//button[@class='button button--unstyled ']
    Input Text    id=clickdeliver_postcode    400011
    Click Element    xpath=//button[@class='button button--primary ']

