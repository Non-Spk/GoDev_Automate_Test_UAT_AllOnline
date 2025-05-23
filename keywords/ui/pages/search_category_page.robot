*** Keywords ***
check_content_search
    common.check_content    ${search_category_locator['ctn_search_category']}

type_search
    [Arguments]    ${product_code}
    common.type_text    ${search_category_locator['txt_search_category']}    ${product_code}
    common.press_enter    ${search_category_locator['txt_search_category']}