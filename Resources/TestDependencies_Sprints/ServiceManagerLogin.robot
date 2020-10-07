*** Settings ***


*** Variables ***

@{BROWSERS}         Chrome   Firefox
${SITEURL}          https://nhs--nhstest.my.salesforce.com/
${Username}         raphael.hunt@ibm.com.nhstest
${Password}         tt-NHS-Demo-2020
${ClickLogin}
${actual_url}       https://nhs--nhstest.lightning.force.com/one/one.app
${DropdownMenu}     xpath://button[@title='Show Navigation Menu']

*** Keywords ***



Given Agent Logs in
    Open Browser   ${SITEURL}   ${BROWSER}
    Input Text   id:username  ${Username}
    Input Text   id:password  ${Password}
    Click Element    id:Login  ${ClickLogin}
    Set Browser Implicit Wait     15s
           ${Title}=        Get Title
           ${new_url}   Get Location
#          Should Be Equal            ${new_url}     ${actual_url}

Dropdown Menu Selection
       Click Element   ${DropdownMenu}