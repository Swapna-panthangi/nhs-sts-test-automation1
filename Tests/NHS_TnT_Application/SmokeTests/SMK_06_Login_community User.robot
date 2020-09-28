*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary
Resource       ${EXECDIR}/Resources/CitizenLogin.robot
Resource     ${EXECDIR}/Resources/TestDependencies.robot


*** Test Cases ***

Given User Logs in
   Open Login page
   Maximize Browser Window

And Citizen Logs in
    Open Citizen Login Page