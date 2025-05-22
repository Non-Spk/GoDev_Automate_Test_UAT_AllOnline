*** Keywords ***
check_content_storecode
    common.check_content    ${login_storecode['ctn_storecode_box']}

type_storecode
    [Arguments]    ${store_code}
    common.type_text    ${login_storecode['txt_storecode']}    ${store_code}

tap_accept
    common.tap_element    ${login_storecode['btn_accept']}