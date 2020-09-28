*** Settings ***

Library     SeleniumLibrary
Library     RequestsLibrary
Resource     ${EXECDIR}/Resources/AgentAccountLogin.robot
Resource     ${EXECDIR}/Resources/TestDependencies_Accounts.robot
Resource     ${EXECDIR}/Resources/Logout.robot

*** Variables ***

${RESOURCE_PATH}


*** Test Cases ***

Given Agent Logs in
   Open Login page
   Maximize Browser Window
   [tags]  SmokeTest
When Click on New Clinical assesment tab

  Dropdown Menu Selection

  Start new clinical assessment

Then Agent Logs out
     Agent Logout

[Teardown]    Close Window