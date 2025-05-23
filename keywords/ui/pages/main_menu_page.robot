*** Keywords ***
check_content_main_menu
    common.check_content    ${main_menu_locator['ctn_main_menu']}

check_store_detail
    [Arguments]    ${store_code}    ${store_title}
    common.check_content    ${main_menu_locator['txt_storecode']}    ${store_code}
    common.check_content    ${main_menu_locator['txt_storetitle_xpath']}    ${store_title}

tap_shopping
    common.tap_element    ${main_menu_locator['btn_shopping']}

tap_tracking
    common.tap_element    ${main_menu_locator['btn_tracking']}