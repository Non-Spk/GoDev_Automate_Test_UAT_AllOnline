*** Keywords ***
check_content_product_basket
    common.check_content    ${product_basket_locator['ctn_basket']}

tap_checkout
    common.tap_element    ${product_basket_locator['btn_checkout']}