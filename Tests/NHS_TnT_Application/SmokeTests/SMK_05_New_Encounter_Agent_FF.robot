*** Settings ***

Library     SeleniumLibrary
Library     RequestsLibrary
Resource     ${EXECDIR}/Resources/AgentAccount1Login_FF.robot
Resource     ${EXECDIR}/Resources/TestDependencies_Accounts.robot
Resource     ${EXECDIR}/Resources/Logout.robot

*** Variables ***

${RESOURCE_PATH}


*** Test Cases ***

Given Agent Logs in
   Open Login page
   Maximize Browser Window

When Click on New Household Member tab

  Dropdown Menu Selection

  Account Dropdown Selection

New Encounter page loads

   NewEncounter Pageload

Then Agent Logs out

     Agent Logout

[Teardown]    Close Window