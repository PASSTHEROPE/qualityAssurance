*** Settings ***

Library  SeleniumLibrary


*** Variables ***
${login_button}    //button[@id='dm-nav-login-button']

*** Test Cases ***

Open Deriv

    Open Browser     https://www.deriv.com     Chrome
    Wait Until Page Contains Element    //div[@class="box__Box-sc-1o0ob9m-0 flex__Flex-sc-1egy8w4-0 hUPPDK bYHlAs"]    30
    Maximize Browser Window
    Click Element    dm-nav-login-button
    Input Text    //input[@type='email']    aditya.bardhan@besquare.com.my
    Input Text    //input[@type='password']    Adi1234!
    Click Element    //button[@type='submit']  
    Wait Until Page Does Not Contain Element    //*[@class="barspinner barspinner--light"]    5
    #Wait Until Page Contains Element    //div[@class="stx-subholder"]    20
    Wait Until Page Contains Element    //div[@class="btn-purchase__effect-detail"]    30
    Click Element    dt_core_account-info_acc-info
    Click Element    dt_core_account-switcher_demo-tab
    Wait Until Page Contains Element    //div[@class="acc-switcher__list"]    30
    Click Element    //*[@class="acc-switcher__id"]

    Wait Until Page Contains Element    //*[@class="dc-icon acc-info__id-icon acc-info__id-icon--virtual"]    30


Open Contract
    Wait Until Page Contains Element    //*[@class="btn-purchase__info btn-purchase__info--left"]    30 

    #Set Selenium Speed    2

    Click Element    //div[@class="cq-symbol-select-btn"]  

    Wait Until Page Contains Element    //div[@class="sc-mcd__filter__item sc-mcd__filter__item--selected"]    30

    Click Element    //div[@class="sc-mcd__item sc-mcd__item--1HZ10V "] 

    Wait Until Page Contains Element    //div[@class="btn-purchase__info btn-purchase__info--left"]   

    Element Should Be Enabled    //div[@class="btn-purchase__info btn-purchase__info--left"] 

    Click Element    //div[@class="btn-purchase__info btn-purchase__info--left"]
 
    #Click Element    //*[@class="sc-mcd__item sc-mcd__item--1HZ10V sc-mcd__item--selected"]    



    