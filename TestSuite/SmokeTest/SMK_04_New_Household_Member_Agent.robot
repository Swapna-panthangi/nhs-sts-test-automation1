*** Settings ***

Library     SeleniumLibrary
Library     RequestsLibrary
Resource     ${EXECDIR}/Resources/AgentAccount1Login.robot
Resource     ${EXECDIR}/Resources/TestDependencies_Accounts.robot
Resource     ${EXECDIR}/Resources/Logout.robot

*** Variables ***

${RESOURCE_PATH}


*** Test Cases ***

Given Agent Logs in
   Open Login page
   Maximize Browser Window
   [tags]  SmokeTest

When Click on New Household Member tab

  Dropdown Menu Selection

  Account Dropdown Selection

New Household Member page loads

   NewHousehold Pageload

Then Agent Logs out

     Agent Logout

[Teardown]     Close Window

