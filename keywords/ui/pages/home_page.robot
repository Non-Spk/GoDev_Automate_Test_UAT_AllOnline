*** Keywords ***
check_content_home
    common.check_content    ${home_locator['ctn_home']}

tap_searchbox
    common.tap_element    ${home_locator['btn_searchbox']}