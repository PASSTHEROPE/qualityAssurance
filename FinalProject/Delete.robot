*** Settings ***

Library  SeleniumLibrary


*** Variables ***
${login_button}    //button[@id='dm-nav-login-button']

*** Test Cases ***

Open Deriv

    Set Selenium Speed    2

    Open Browser     https://app.deriv.com/account/api-token     Chrome
    #Wait Until Page Contains Element    //div[@class="box__Box-sc-1o0ob9m-0 flex__Flex-sc-1egy8w4-0 hUPPDK bYHlAs"]    30
    Maximize Browser Window
    #Click Element    dm-nav-login-button
    Input Text    //input[@type='email']    aditya.bardhan@besquare.com.my
    Input Text    //input[@type='password']    Adi1234!
    Click Element    //button[@type='submit']  

    #Click Element    //div[@class="dc-popover__target"]

Testcase
    Get Element Count    //table[@class='da-api-token__table']//tbody//tr

    # Click Element    //*[@class="dc-icon dc-clipboard da-api-token__delete-icon"]
    # Click Element    //*[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large dc-dialog__button"]

    # Click Element    //*[@class="dc-icon dc-clipboard da-api-token__delete-icon"]
    # Click Element    //*[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large dc-dialog__button"]

    # Click Element    //*[@class="dc-icon dc-clipboard da-api-token__delete-icon"]
    # Click Element    //*[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large dc-dialog__button"] 
    
    # Click Element    //*[@class="dc-icon dc-clipboard da-api-token__delete-icon"]
    # Click Element    //*[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large dc-dialog__button"]

    # Click Element    //*[@class="dc-icon dc-clipboard da-api-token__delete-icon"]   
    # Click Element    //*[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large dc-dialog__button"] 

#for me to reset the test conditions