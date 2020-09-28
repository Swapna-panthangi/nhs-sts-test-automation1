*** Settings ***

Resource        ${EXECDIR}/Resources/TestDependencies.robot

*** Variables ***

${browser}          chrome
${SITEURL}          https://nhs--nhstest.my.salesforce.com/
${Username}         kapil.bhatt-cic.uk@ibm.com.nhstest
${Password}         NHSTest541
${ClickLogin}
${DropdownMenu}     xpath://button[@title='Show Navigation Menu']


*** Keywords ***

Open Login Page
    ${options}=     Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys
    Call Method     ${options}    add_argument    --disable-notifications
#    Call Method     ${options}    add_argument    --incognito
    Open Browser   ${SITEURL}   ${browser}  options=${options}
    Input Text   id:username  ${Username}
    Input Text   id:password  ${Password}
    Click Element    id:Login  ${ClickLogin}
    Set Browser Implicit Wait     15s
           ${Title}=        Get Title
           ${new_url}   Get Location


Open Citizen Login Page
    Click Element            ${Search}
    Input Text               ${Search}          ${AccountName}
    Press Keys                          ${Search}           ENTER
    Wait Until Page Contains Element    ${Search}       15s
     Click Element                      ${SelectAccountName1}
     Wait Until Page Contains Element        ${userdropdown}     15s
     Click Element       ${userdropdown}
     Log to console     ${userdropdown}
        Click Link      ${Log in to Community as User}
