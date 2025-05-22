*** Keywords ***
prelogin
    login_staff_page.check_content_prelogin
    login_staff_page.check_version    ${app['version']}
    login_staff_page.tap_prelogin

login_cpall
    login_cpall_page.check_content_cpallide
    login_cpall_page.type_username    ${user_cpall['username']}
    login_cpall_page.type_password    ${user_cpall['password']}
    login_cpall_page.tap_login

login_storecode
    login_storecode_page.check_content_storecode
    login_storecode_page.type_storecode    ${store['code']}
    login_storecode_page.tap_accept

check_store_detail
    main_menu_page.check_content_mainmenu
    main_menu_page.check_store_detail    ${store['code']}    ${store['title']}


login
    login_feature.prelogin
    login_feature.login_cpall
    login_feature.login_storecode
    login_feature.check_store_detail