*** Keywords ***
open_application
    AppiumLibrary.Open application      remote_url=${device['remote_url']}
    ...                                 platformName=${device['platform_name']}
    ...                                 platformVersion=${device['platform_version']}
    ...                                 deviceName=${device['device_name']}
    ...                                 appPackage=${app['package']}
    ...                                 appActivity=${app['activity']}
    ...                                 autoGrantPermissions=${app['permission']}


close_application
    AppiumLibrary.Close application


check_content
    [Arguments]    ${locator}    ${expected_text}=None    ${timeout}=30s
    AppiumLibrary.Wait until element is visible    ${locator}    ${timeout}
    AppiumLibrary.Element should be visible    ${locator}    ${timeout}
    Run keyword if    '${expected_text}' != 'None'    check_text_in_element    ${locator}    ${expected_text}


check_text_in_element
    [Arguments]    ${locator}    ${expected_text}
    ${actual_text}=    AppiumLibrary.Get Text    ${locator}
    Should Contain    ${actual_text}    ${expected_text}


wait_until_element_invisible
    [Arguments]    ${locator}    ${timeout}=30s
    AppiumLibrary.Wait Until Page Does Not Contain Element    ${locator}    ${timeout}

tap_element
    [Arguments]    ${locator}    ${timeout}=30s
    AppiumLibrary.Wait until page contains element    ${locator}    ${timeout}
    ${position}=    AppiumLibrary.Get element location    ${locator}
    ${size}=        AppiumLibrary.Get element size        ${locator}
    ${center_x}=    Evaluate    float($position.get('x', 0)) + float($size.get('width', 0)) / 2
    ${center_y}=    Evaluate    float($position.get('y', 0)) + float($size.get('height', 0)) / 2
    @{tap_coordinates}=    Create List    ${center_x}    ${center_y}
    @{positions}=          Create List    ${tap_coordinates}
    AppiumLibrary.Tap With Positions    500    @{positions}


type_text
    [Arguments]    ${locator}    ${text}    ${timeout}=30s
    AppiumLibrary.Wait until page contains element    ${locator}    ${timeout}
    AppiumLibrary.Input text    ${locator}    ${text}


type_password
    [Arguments]    ${locator}    ${text}    ${timeout}=30s
    AppiumLibrary.Wait until page contains element    ${locator}    ${timeout}
    AppiumLibrary.Input password    ${locator}    ${text}


press_enter
    [Arguments]    ${locator}
    common.tap_element    ${locator}
    AppiumLibrary.Press keycode    66
