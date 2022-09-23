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
    Wait Until Page Contains Element    //*[@class="da-api-token__checkbox-wrapper"]    30
    Click Element    //*[@class="dc-checkbox__box"]
    Click Element    //*[@class="dc-checkbox__box"]

    
    Press Keys    //*[@class="dc-input__field"]    CTRL+a+BACKSPACE
    Input Text    //*[@class="dc-input__field"]   siyu
    Click Element    //*[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large dc-btn__button-group da-api-token__button"]
    #Textfield Value Should Be   //*[@class="da-api-token__table-cell da-api-token__table-cell--name"]    adifi

    Click Element    //*[@class="dc-icon dc-clipboard"]
    #Click Element    //*[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large dc-dialog__button"]

    #nonadmin