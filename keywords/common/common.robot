*** Keywords ***
open_application
    AppiumLibrary.Open application      remote_url=${device['remote_url']}
    ...                                 platformName=${device['platform_name']}
    ...                                 platformVersion=${device['platform_version']}
    ...                                 deviceName=${device['device_name']}
    ...                                 appPackage=${app_path['package']}
    ...                                 appActivity=${app_path['activity']}
    ...                                 autoGrantPermissions=${app_path['permission']}

close_application
    AppiumLibrary.Close application