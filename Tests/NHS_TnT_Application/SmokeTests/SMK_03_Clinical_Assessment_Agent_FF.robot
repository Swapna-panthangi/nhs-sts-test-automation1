*** Settings ***

Library     SeleniumLibrary
Library     RequestsLibrary
Resource     ${EXECDIR}/Resources/AgentAccountLogin_FF.robot
Resource     ${EXECDIR}/Resources/TestDependencies_Accounts.robot
Resource     ${EXECDIR}/Resources/Logout.robot

*** Variables ***

${RESOURCE_PATH}


*** Test Cases ***

Given Agent Logs in
   Open Login page
   Maximize Browser Window

When Click on New Clinical assesment tab

  Dropdown Menu Selection

  Start new clinical assessment

Then Agent Logs out
     Agent Logout

[Teardown]    Close Window