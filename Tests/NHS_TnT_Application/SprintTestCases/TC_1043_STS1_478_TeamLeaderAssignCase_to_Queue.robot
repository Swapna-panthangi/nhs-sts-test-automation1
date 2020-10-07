*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary
Library   robot.libraries.DateTime
Resource     ${EXECDIR}/Resources/TestDependencies_Sprints/ServiceManagerLogin.robot
Resource     ${EXECDIR}/Resources/TestDependencies_Sprints/TestDependencies_Lead.robot
Resource     ${EXECDIR}/Resources/Logout.robot

*** Variables ***
@{BROWSERS}       Chrome   Firefox
${BROWSER}


*** Test Cases ***
Test with Several Browsers

    FOR  ${Browser}  IN   @{BROWSERS}
         Set Global Variable   ${BROWSER}   ${Browser}
         log to console  Open Login page ${BROWSER}
    Given Agent Logs in
         Maximize Browser Window
         Dropdown Menu Selection

    Change the lead owner to Queue

    Then Agent Logs out

    END

[Teardown]   Close Window

