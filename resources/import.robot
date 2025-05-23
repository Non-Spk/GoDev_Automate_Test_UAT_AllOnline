*** Settings ***
#Library
Library    AppiumLibrary
Library    DebugLibrary

#Dobby-Library

#Resource file
Variables    ${CURDIR}/settings/setting.yaml
Variables    ${CURDIR}/testdata/common_data.yaml


#Common keyword and database
Resource    ${CURDIR}/../keywords/common/common.robot

#PAGES
Resource    ${CURDIR}/../keywords/ui/pages/address_payment_page.robot
Resource    ${CURDIR}/../keywords/ui/pages/home_page.robot
Resource    ${CURDIR}/../keywords/ui/pages/login_cpall_page.robot
Resource    ${CURDIR}/../keywords/ui/pages/login_staff_page.robot
Resource    ${CURDIR}/../keywords/ui/pages/login_storecode_page.robot
Resource    ${CURDIR}/../keywords/ui/pages/main_menu_page.robot
Resource    ${CURDIR}/../keywords/ui/pages/member_otpcode_page.robot
Resource    ${CURDIR}/../keywords/ui/pages/menu_member_page.robot
Resource    ${CURDIR}/../keywords/ui/pages/product_basket_page.robot
Resource    ${CURDIR}/../keywords/ui/pages/product_category_page.robot
Resource    ${CURDIR}/../keywords/ui/pages/product_detail_page.robot
Resource    ${CURDIR}/../keywords/ui/pages/search_category_page.robot

#FEATURES
Resource    ${CURDIR}/../keywords/ui/features/login_feature.robot
Resource    ${CURDIR}/../keywords/ui/features/product_feature.robot
Resource    ${CURDIR}/../keywords/ui/features/shopping_feature.robot


#LOCATOR
Resource    ${CURDIR}/../keywords/ui/locator/address_payment_locator.robot
Resource    ${CURDIR}/../keywords/ui/locator/home_locator.robot
Resource    ${CURDIR}/../keywords/ui/locator/login_cpall_locator.robot
Resource    ${CURDIR}/../keywords/ui/locator/login_staff_locator.robot
Resource    ${CURDIR}/../keywords/ui/locator/login_storecode_locator.robot
Resource    ${CURDIR}/../keywords/ui/locator/main_menu_locator.robot
Resource    ${CURDIR}/../keywords/ui/locator/member_otpcode_locator.robot
Resource    ${CURDIR}/../keywords/ui/locator/menu_member_locator.robot
Resource    ${CURDIR}/../keywords/ui/locator/product_basket_locator.robot
Resource    ${CURDIR}/../keywords/ui/locator/product_category_locator.robot
Resource    ${CURDIR}/../keywords/ui/locator/product_detail_locator.robot
Resource    ${CURDIR}/../keywords/ui/locator/search_category_locator.robot


#Testdata UI


#TEST DATA API


#API


#JSON_FILE