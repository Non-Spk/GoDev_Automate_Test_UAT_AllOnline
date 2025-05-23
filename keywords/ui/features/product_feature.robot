*** Keywords ***
search_and_select_product
    [Arguments]    ${product_code}
    home_page.tap_searchbox
    search_category_page.check_content_search
    search_category_page.type_search    ${product_code}
    product_category_page.check_content_product_category
    product_category_page.check_content_product
    product_category_page.tap_product
    product_detail_page.check_content_product_detail
    product_detail_page.tap_add_to_basket
    product_detail_page.check_msg_success
    product_detail_page.tap_back

go_to_basket
    product_category_page.tap_basket
    product_basket_page.check_content_product_basket
    product_basket_page.tap_checkout
    address_payment_page.check_content_address_payment