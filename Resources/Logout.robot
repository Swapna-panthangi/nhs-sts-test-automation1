
*** Settings ***


*** Variables ***

${clickprofile}         xpath://span[contains(@class,'uiImage')]
${clickopenedAccount}   xpath://span[contains(@title,'Close Patricia Ferrari')]

${ClickLogout}          xpath://a[contains(@class,'profile-link-label logout uiOutputURL')]
${CloseOpenedcase}      xpath://span[contains(@title,'Close 00002714')]

*** Keywords ***


Agent Logout
    Wait Until Element Is Enabled        ${clickprofile}     10s
    Click Element                        ${clickprofile}
    Click Element                        ${ClickLogout}

