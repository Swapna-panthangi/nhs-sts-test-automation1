*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary
Resource     ${EXECDIR}/nhs-sts-test-automation1/Resources/AgentLogin.robot
Resource     ${EXECDIR}/nhs-sts-test-automation1/Resources/TestDependencies_cases.robot
Resource     ${EXECDIR}/nhs-sts-test-automation1/Resources/Logout.robot


*** Variables ***
@{BROWSERS}       Firefox
${BROWSER}


*** Test Cases ***
Test with Several Browsers
    FOR  ${Browser}  IN   @{BROWSERS}
         Set Global Variable   ${BROWSER}   ${Browser}
         log to console  Open Login page ${BROWSER}
         Run Keyword If  '${BROWSER}' =='Firefox'
         ...   Given Agent Logs into Firefox Browser
         ...   ELSE
         ...   Given Agent Logs into Chrome Browser
         Maximize Browser Window
     Agent provides the inputs
         Dropdown Menu Selection
        #Case assignment to Agent

    When Click on Start contact Tracing

    Then Agent Logs out
    END
[Teardown]    Close Window






