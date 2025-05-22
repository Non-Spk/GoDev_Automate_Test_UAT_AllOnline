*** Keywords ***
check_content_otp_code
    common.check_content    ${member_otpcode_locator['ctn_otp_code']}

type_otp
    [Arguments]    ${otp}
    common.type_text    ${member_otpcode_locator['txt_otp']}    ${otp}

tap_accept
    common.tap_element    ${member_otpcode_locator['btn_confirm']}