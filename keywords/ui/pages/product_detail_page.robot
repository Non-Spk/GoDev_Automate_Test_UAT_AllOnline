*** Keywords ***
check_content_product_detail
    common.check_content    ${product_detail_locator['ctn_product_detail']}

tap_add_to_basket
    common.tap_element    ${product_detail_locator['btn_add_to_basket']}

check_msg_success
    common.check_content    ${product_detail_locator['txt_status']}    เพิ่มสินค้าในตะกร้าเรียบร้อยแล้ว
    common.wait_until_element_invisible    ${product_detail_locator['txt_status']}

tap_back
    common.tap_element    ${product_detail_locator['btn_back']}