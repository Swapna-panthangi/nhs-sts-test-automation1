*** Variables ***
${NotificationIcon}      xpath://Lightning-icon[@class='slds-button__icon slds-global-header__icon slds-icon-utility-notification slds-icon_container forceIcon']
${NotificationMessage}    xpath=//span[contains(@class,'notification-text-title uiOutputText')]












*** Keywords ***
Verify Notification
    Click Element    ${NotificationIcon}
    Sleep     4s
 #Should Be Equal As Strings    ${response}
    Element Should Contain      ${NotificationMessage}          A1 testone has been assigned to you