*** Keywords ***
check_content_cpallide
    common.check_content    ${login_cpall_locator['ctn_cpallide']}

type_username
    [Arguments]    ${username}
    common.type_text    ${login_cpall_locator['txt_username']}    ${username}

type_password
    [Arguments]    ${password}
    common.type_password    ${login_cpall_locator['txt_password']}    ${password}

tap_login
    common.tap_element    ${login_cpall_locator['btn_login']}