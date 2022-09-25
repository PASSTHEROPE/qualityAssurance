*** Settings ***

Library  SeleniumLibrary


*** Variables ***
${login_button}    //button[@id='dm-nav-login-button']

*** Test Cases ***

Open Deriv

    Set Selenium Speed    2

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

Lower Contract
    Wait Until Page Does Not Contain Element    //*[@aria-label="Loading interface..."]    20

    Wait Until Page Contains Element    //*[@class="btn-purchase__info btn-purchase__info--left"]    30 

    #Set Selenium Speed    2
    Wait Until Page Does Not Contain Element    //*[@aria-label="Loading interface..."]    60

    Click Element    //div[@class="cq-symbol-select-btn"]

    Wait Until Page Contains Element    //div[@class="sc-mcd__filter__item sc-mcd__filter__item--selected"]    30

    Click Element    //div[@class="sc-mcd__filter__item "]

    Click Element    //div[@class="sc-mcd__filter__item " and contains(.,'Forex')]

    Wait Until Page Contains Element    //div[@class="sc-mcd__filter__item sc-mcd__filter__item--selected"]    30

    Click Element    //div[@class="sc-mcd__item sc-mcd__item--frxAUDUSD "]
    Wait Until Page Does Not Contain Element    //*[@aria-label="Loading interface..."]    20
    Click Element    dt_contract_dropdown

    Click Element    dt_contract_high_low_item

    Click Element    //div[@class="dc-input dc-datepicker__input dc-datepicker__input--has-leading-icon"]

    Wait Until Page Does Not Contain Element    //*[@aria-label="Loading interface..."]    20

    Press Keys    //*[@class="dc-input__field"]    CTRL+a+BACKSPACE

    Wait Until Page Does Not Contain Element    //*[@aria-label="Loading interface..."]    20
    Input Text    //*[@class="dc-input__field"]     4

    Click Element    dc_payout_toggle_item

    Press Keys    dt_amount_input    CTRL+a+BACKSPACE

    Wait Until Page Does Not Contain Element    //*[@aria-label="Loading interface..."]    20
    Input Text    dt_amount_input     15.50
    Wait Until Page Does Not Contain Element    //*[@aria-label="Loading interface..."]    700
    Element Should Be Enabled    //div[@class="btn-purchase__info btn-purchase__info--left"]    


    Click Element    //div[@class="btn-purchase__info btn-purchase__info--left"]

task 4

    Wait Until Page Does Not Contain Element    //*[@aria-label="Loading interface..."]    70
    Press Keys    //div[@class="dc-input-field trade-container__barriers-single"]    CTRL+a+BACKSPACE
    Input Text    //div[@class="dc-input-field trade-container__barriers-single"]    0.3

