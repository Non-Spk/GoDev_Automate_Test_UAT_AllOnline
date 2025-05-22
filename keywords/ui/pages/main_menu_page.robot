*** Keywords ***
check_content_main_menu
    common.check_content    ${main_menu['ctn_main_menu']}

check_store_detail
    [Arguments]    ${store_code}    ${store_title}
    common.check_content    ${main_menu['txt_storecode']}    ${store_code}
    common.check_content    ${main_menu['txt_storetitle_xpath']}    ${store_title}