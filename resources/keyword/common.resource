*** Settings ***
Variables         ../../libs/locators/locator.py
Variables         ../../parameters.py
Resource          ../../resources/keyword/common.resource
Library           SeleniumLibrary
Library           String
Library           BuiltIn

*** Keywords ***
Open Homepage
    Open Browser    ${home_page_url}    ${browser}
    Maximize Browser Window
    ${is_visible} =    Run Keyword And Return Status    Wait Until Element Is Visible    ${ads}    ${default_timeouts}
    Run Keyword If    ${is_visible}    Click Element    ${btn_close_ads}

Search Product
    [Arguments]    ${arg}
    Wait Until Element Is Visible    ${search_text_field}    ${default_timeouts}
    Click Element    ${search_text_field}
    Sleep    5s
    Input Text    ${search_text_field}    ${arg}
    Sleep    5s
    Press Keys    ${btn_search}    ENTER

Using Filter Product
    [Arguments]    ${arg}
    ${new_xpath} =    Replace String    ${filter_params}    param    ${arg}
    Log    ${new_xpath}
    Wait Until Element Is Visible    ${new_xpath}    ${default_timeouts}
    Click Element    ${new_xpath}

Select Product And Add To Cart
    Wait Until Element Is Enabled    xpath=//*[contains(text(),'Screen Size Group')]    ${default_timeouts}
    Click Element    ${ele}
    Wait Until Element Is Enabled    ${btn_add_to_cart}    ${default_timeouts}
    Click Element    ${btn_add_to_cart}
    Wait Until Element Is Visible    ${pop_up_add_success}    ${default_timeouts}

View Cart
    Wait Until Element Is Visible    ${btn_cart}    ${default_timeouts}
    Click Element    ${btn_cart}
    ${is_visible} =    Run Keyword And Return Status    Wait Until Element Is Visible    ${btn_viewCart}    ${default_timeouts}
    Run Keyword If    ${is_visible}    Click Element    ${btn_viewCart}
    Wait Until Element Is Visible    ${btn_continue_shopping}    ${default_timeouts}
