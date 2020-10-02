*** Settings ***

Library     SeleniumLibrary
Library     RequestsLibrary
Resource     ${EXECDIR}/Resources/AgentAccountLogin.robot
Resource     ${EXECDIR}/Resources/TestDependencies_Accounts.robot
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

    When click on Start new clinical assessment

    Then Agent Logs out

    END
[Teardown]      Close Window
