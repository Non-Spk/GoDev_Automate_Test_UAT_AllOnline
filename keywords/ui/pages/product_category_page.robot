*** Keywords ***
check_content_product_category
    common.check_content    ${product_category_locator['ctn_product_category']}

check_content_product
    common.check_content    ${product_category_locator['ctn_product']}

tap_product
    common.tap_element    ${product_category_locator['img_product']}

tap_basket
    common.tap_element    ${product_category_locator['btn_basket']}