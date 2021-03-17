*** Settings ***
Test Setup        Open Homepage
Test Teardown     Close Browser
Test Template     Search Product Using Filter And Add To Cart
Library           DataDriver    file=../resources/test_data/data_driver.csv    dialect=excel
Resource          ../resources/keyword/common.resource

*** Test Cases ***
Test Search TV By Screen Size And Add To Cart

*** Keywords ***
Search Product Using Filter And Add To Cart
    [Arguments]    ${product}    ${filter_data}
    Search Product    ${product}
    Using Filter Product    ${filter_data}
    Select Product And Add To Cart
    View Cart
    Capture Page Screenshot    1.png
