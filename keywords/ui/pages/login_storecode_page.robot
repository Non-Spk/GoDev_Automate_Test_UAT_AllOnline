*** Keywords ***
check_content_storecode
    common.check_content    ${login_storecode_locator['ctn_storecode_box']}

type_storecode
    [Arguments]    ${store_code}
    common.type_text    ${login_storecode_locator['txt_storecode']}    ${store_code}

tap_accept
    common.tap_element    ${login_storecode_locator['btn_accept']}