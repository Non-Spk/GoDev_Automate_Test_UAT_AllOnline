*** Keywords ***
select_shopping
    main_menu_page.tap_shopping

enter_member
    [Arguments]    ${telephone}
    menu_member_page.check_content_menu_member
    menu_member_page.click_telephone
    menu_member_page.type_telephone    ${telephone}
    menu_member_page.tap_confirm

enter_otp
    [Arguments]    ${otp}
    member_otpcode_page.check_content_otp_code
    member_otpcode_page.type_otp    ${otp}
    member_otpcode_page.tap_accept

check_goto_home
    home_page.check_content_home

signin_with_old_member
    shopping_telephone_feature.select_shopping
    shopping_telephone_feature.enter_member    ${member['old']['telephone']}
    shopping_telephone_feature.enter_otp    ${member['old']['otp']}
    shopping_telephone_feature.check_goto_home