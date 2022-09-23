*** Settings ***

Library  SeleniumLibrary


*** Variables ***
${login_button}    //button[@id='dm-nav-login-button']

*** Test Cases ***

Open Deriv

    Set Selenium Speed    2

    Open Browser     https://app.deriv.com/account/closing-account     Chrome
    #Wait Until Page Contains Element    //div[@class="box__Box-sc-1o0ob9m-0 flex__Flex-sc-1egy8w4-0 hUPPDK bYHlAs"]    30
    Maximize Browser Window
    #Click Element    dm-nav-login-button
    Input Text    //input[@type='email']    aditya.bardhan@besquare.com.my
    Input Text    //input[@type='password']    Adi1234!
    Click Element    //button[@type='submit']  
    #Wait Until Page Does Not Contain Element    //*[@class="barspinner barspinner--light"]    5
    #Wait Until Page Does Not Contain Element    //*[@aria-label="Loading interface..."]    70
    Click Element    //div[@class="dc-popover__target"]
    #Click Element    //div[@class="notifications-item__link-wrapper"]

TestCase

    Click Element    //*[@class="dc-btn dc-btn--primary dc-btn__large closing-account__button--close-account"]
    Click Element    //*[@class="dc-text dc-checkbox__label" and contains(.,'Making deposits and withdrawals is difficult.')]
    Click Element    //*[@class="dc-text dc-checkbox__label" and contains(.,'I want to stop myself from trading.')]
    Click Element    //*[@class="dc-text dc-checkbox__label" and contains(.,'I’m no longer interested in trading.')]

   

    Press Keys    //*[@class="dc-input__field dc-input__textarea dc-input__field--placeholder-visible"]    CTRL+a+BACKSPACE
    Input Text    //*[@class="dc-input__field dc-input__textarea dc-input__field--placeholder-visible"]   hi im sharifah
    Press Keys    //*[@class="dc-input__field dc-input__textarea dc-input__field--placeholder-visible" and contains(.,'do_to_improve')]    CTRL+a+BACKSPACE
    Input Text    //*[@class="dc-input__field dc-input__textarea dc-input__field--placeholder-visible" and contains(.,'do_to_improve')]   hi im the afifi

    Click Element    //*[@class="dc-btn dc-btn__effect dc-btn--primary dc-btn__large"]

#popup for close acc multiple selected