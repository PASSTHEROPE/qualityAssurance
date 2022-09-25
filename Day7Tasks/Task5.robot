*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${login_button}    //button[@id='dm-nav-login-button']
${active deal cancellation checkbox}    //*[@id='dt_cancellation-checkbox_input']/../span[@class="dc-checkbox__box dc-checkbox__box--active"]


*** Test Cases ***

Open Deriv

    Set Selenium Speed    2

    Open Browser     https://www.deriv.com     Chrome
    Wait Until Page Contains Element    //div[@class="box__Box-sc-1o0ob9m-0 flex__Flex-sc-1egy8w4-0 hUPPDK bYHlAs"]    60
    Maximize Browser Window
    Click Element    dm-nav-login-button
    Input Text    //input[@type='email']    !
    Input Text    //input[@type='password']    !
    Click Element    //button[@type='submit']  
    Wait Until Page Does Not Contain Element    //*[@class="barspinner barspinner--light"]    10
    #Wait Until Page Contains Element    //div[@class="stx-subholder"]    20
    Wait Until Page Contains Element    //div[@class="btn-purchase__effect-detail"]    60
    Click Element    dt_core_account-info_acc-info
    Click Element    dt_core_account-switcher_demo-tab
    Wait Until Page Contains Element    //div[@class="acc-switcher__list"]    60
    Click Element    //*[@class="acc-switcher__id"]

    Wait Until Page Contains Element    //*[@class="dc-icon acc-info__id-icon acc-info__id-icon--virtual"]    60

*** Keywords ***
Test Case Check Stake n payout
    Wait Until Page Contains Element    //*[@class="trade-container__fieldset-info trade-container__fieldset-info--left" and contains(.,'Stake')]
    Wait Until Page Does Not Contain Element    //*[@class="trade-container__fieldset-info trade-container__fieldset-info--left" and contains(.,'Payout')]

Test case Check TP/SL
    Click Element    //*[@id='dc_take_profit-checkbox_input']/../span[@class='dc-checkbox__box']
    Input Text    //*[@class="dc-input-wrapper__input input--has-inline-prefix input input--error trade-container__input"]    10.00
    Click Element    //*[@id='dc_stop_loss-checkbox_input']/../span[@class='dc-checkbox__box']
    Input Text    //*[@class="dc-input-wrapper__input input--has-inline-prefix input input--error trade-container__input"]    10.00
    Wait Until Page Contains Element    //*[@id='dc_take_profit-checkbox_input']/../*[@class="dc-checkbox__box dc-checkbox__box--active"]    60
    Wait Until Page Contains Element    //*[@id='dc_stop_loss-checkbox_input']/../*[@class="dc-checkbox__box dc-checkbox__box--active"]    60
    Wait Until Page Contains Element    //*[@id='dt_cancellation-checkbox_input']/../span[@class='dc-checkbox__box']    60

Test caseDeal Cancel
    Click Element    //*[@for="dt_cancellation-checkbox_input"]
    Wait Until Page Contains Element    ${active deal cancellation checkbox}    60
    Wait Until Page Contains Element    //*[@id='dc_take_profit-checkbox_input']/../span[@class='dc-checkbox__box']    60
    Wait Until Page Contains Element    //*[@id='dc_stop_loss-checkbox_input']/../span[@class='dc-checkbox__box']    60


Test case Multiplier Selection
    Click Element    //*[@class="dc-text dc-dropdown__display-text"]
    Wait Until Page Contains Element    //*[@class="dc-list__item dc-list__item--selected" and contains(.,'20')]    60
    Wait Until Page Contains Element    //*[@class="dc-list__item" and contains(.,'40')]    60
    Wait Until Page Contains Element    //*[@class="dc-list__item" and contains(.,'60')]    60
    Wait Until Page Contains Element    //*[@class="dc-list__item" and contains(.,'100')]    60
    Wait Until Page Contains Element    //*[@class="dc-list__item" and contains(.,'200')]    60

Test case Cancellation Increases
    Press Keys    //*[@class="dc-input-wrapper__input input--has-inline-prefix input trade-container__input"]    CTRL+A    BACKSPACE
    Input Text    //*[@class="dc-input-wrapper__input input--has-inline-prefix input input--error trade-container__input"]    20.00
    Wait Until Page Contains Element    ${active deal cancellation checkbox}    60
    Click Element    dt_amount_input_add
    Wait Until Page Contains Element    //*[@class="trade-container__price-info-currency" and contains(.,'0.48')]    60


Test case Maximum n min Stake
    Press Keys    //*[@class="dc-input-wrapper__input input--has-inline-prefix input trade-container__input"]    CTRL+A    BACKSPACE
    Input Text    //*[@class="dc-input-wrapper__input input--has-inline-prefix input input--error trade-container__input"]    2022
    Wait Until Page Contains Element    //*[@class="trade-container__fieldset-wrapper trade-container__fieldset-wrapper--disabled" and contains(.,'0.00')]    60
    Press Keys    //*[@class="dc-input-wrapper__input input--has-inline-prefix input trade-container__input"]    CTRL+A    BACKSPACE
    Input Text    //*[@class="dc-input-wrapper__input input--has-inline-prefix input input--error trade-container__input"]    0.5
    Wait Until Page Contains Element    //*[@class="trade-container__tooltip dc-tooltip dc-tooltip--error"]    60

Test case plus minus
    Click Element    dt_amount_input_add
    Wait Until Page Contains Element    //*[@value="1.5"]    60
    Click Element    dt_amount_input_sub
    Wait Until Page Contains Element    //*[@value="0.5"]    60