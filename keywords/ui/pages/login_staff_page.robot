*** Keywords ***

check_content_prelogin
    common.check_content    ${login_staff_locator['ctn_prelogin']}


check_version
    [Arguments]    ${version}
    common.check_content    ${login_staff_locator['txt_version']}    ${version}


tap_prelogin
    common.tap_element    ${login_staff_locator['btn_prelogin']}