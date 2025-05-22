*** Keywords ***

check_content_menu_member
    common.check_content    ${menu_member['ctn_menu_member']}

click_telephone
    common.tap_element    ${menu_member['btn_telephone']}

type_telephone
    [Arguments]    ${telephone}
    common.type_text    ${menu_member['txt_telephone']}    ${telephone}

tap_confirm
    common.tap_element    ${menu_member['btn_confirm']}

