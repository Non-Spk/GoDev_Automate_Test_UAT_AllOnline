*** Keywords ***

check_content_prelogin
    common.check_content    ${login_staff['ctn_prelogin']}


check_version
    [Arguments]    ${version}
    common.check_content    ${login_staff['txt_version']}    ${version}


tap_prelogin
    common.tap_element    ${login_staff['btn_prelogin']}