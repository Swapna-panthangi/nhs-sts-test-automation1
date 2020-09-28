*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary
Resource     ${EXECDIR}/Resources/AgentLogin_FF.robot
Resource     ${EXECDIR}/Resources/TestDependencies_cases.robot
Resource     ${EXECDIR}/Resources/Logout.robot



*** Variables ***
${RESOURCE_PATH}

*** Test Cases ***

Given Agent Logs in
   Open Login page
   Maximize Browser Window

When Click on Start contact Tracing
    Dropdown Menu Selection
    Start contact Tracing


Then Agent Logs out
     Agent Logout

#[Teardown]  Close Browser



