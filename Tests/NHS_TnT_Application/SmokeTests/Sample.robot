*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary


*** Variables ***

${browser}  chrome
${SITEURL}  https://nhs--nhstest.my.salesforce.com/



*** Test Cases ***
This is sample Test case for login to application
    [documentation]  Login Application Test
    [tags]  SmokeTest

    Requests
*** Keywords ***

Requests

    Open Browser   https://nhs--nhstest.my.salesforce.com/   chrome
    Input Text    id:username       swapna.panthangi-cic-uk@ibm.com.nhstest
    Input Text    id:password       Omsrisairam$6
    Click Element    id:Login






