*** Settings ***
Library      SeleniumLibrary
Library      RequestsLibrary
Library      robot.libraries.DateTime
Resource     ${EXECDIR}/Resources/AgentLogin.robot
Resource     ${EXECDIR}/Resources/TestDependencies_cases.robot
Resource     ${EXECDIR}/Resources/Logout.robot

*** Variables ***
${RESOURCE_PATH}

*** Test Cases ***

Given Agent Logs in
   Open Login page
   Maximize Browser Window
    [tags]  SmokeTest

When Click on Start contact Tracing
    Dropdown Menu Selection
    Start contact Tracing

#    Scroll Page To Location   0     2000

Then Agent Logs out
     Agent Logout

[Teardown]      Close Window




