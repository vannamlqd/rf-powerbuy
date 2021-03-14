*** Settings ***
Test Setup       Open Homepage
Test Teardown         Close Browser
Library         SeleniumLibrary

*** Variables ***
${browser}    chrome
${home_page_url}      https://www.powerbuy.co.th/en
${search_text_field}    //*[@id="txt-searchBox-input"]
${btn_search}    //*[@id="btn-searchBox-input"]
${32_to_43_inches}      //*[text()='32 - 43 inches']//preceding::div[2]
${44_to_55_inches}      //*[text()='44 - 55 inches']//preceding::div[2]
${btn_add_to_cart}    //button[contains(@id, 'btn-addCart')]
${ele}    //div[text()='Delivery']//ancestor::div[3]
${btn_viewCart}    //*[@id="lnk-viewCart"]
${pop_up_add_success}    //*[@type="success"]
${btn_cart}    //*[@id="btn-openMiniCart"]
${btn_continue_shopping}    //*[@id="lnk-viewHome"]/button
${default_timeouts}    20

*** Test Cases ***
Select TV And Add To Cart
    Search TV Product
    Filter TV 32 - 43 inches By Screen Size
    Select TV And Add To Cart
    Search TV Product
    Filter TV 44 - 55 inches By Screen Size
    Select TV And Add To Cart
    View Cart
    Capture Page Screenshot    1.png


*** Keywords ***
Open Homepage
    Open Browser    ${home_page_url}    ${browser}
    Maximize Browser Window

Search TV Product
    Wait Until Element Is Visible    ${search_text_field}    ${default_timeouts}
    Click Element    ${search_text_field}
    Input Text    ${search_text_field}    TV
    Press Keys    ${btn_search}    ENTER

Filter TV 32 - 43 inches By Screen Size
    Wait Until Element Is Visible    ${32_to_43_inches}    ${default_timeouts}
    Click Element    ${32_to_43_inches}

Filter TV 44 - 55 inches By Screen Size
    Wait Until Element Is Visible    ${44_to_55_inches}    ${default_timeouts}
    Click Element    ${44_to_55_inches}

Select TV And Add To Cart
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