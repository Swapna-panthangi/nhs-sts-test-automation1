*** Variables ***


${ClickAccountDropdown}             xpath://button[@title='Show Navigation Menu']
${ClickAccounts1}                   xpath://span[contains(text(),'Accounts')]
${ClickAccounts}                    xpath://*[@id='navMenuList']/div/ul/li[5]/div/a
${SelectAccountName}                xpath://a[contains(@title,'Patricia Ferrari')]
${SelectAccountName1}               xpath://a[contains(@class,'slds-cell-edit cellContainer slds-has-focus')]
${SelectNewencounterMember}         xpath://button[contains(@name,'Account.New_Contact_Encounter')]
${AccountSearch}                    xpath://input[contains(@name,'Account-search-input')]
${AccountSearch1}                   xpath://input[contains(@placeholder,'Search this list...')]
${AccountName}                      Patricia Ferrari
${NewClinicalAssessment}            xpath://button[@name='Account.New_Clinical_Assessment']
${Next}                             xpath://button[@title='Next']
${Search}                           xpath://input[@placeholder='Search...']
${userdropdown}                     xpath://button[@class='slds-button slds-button_icon-border-filled']
${SelectNewEncounter}               xpath://button[contains(@name,'Account.New_Contact_Encounter')]
${SelectNewHouseholdMember}         xpath://button[contains(@name,'Account.Create_Household_Member')]
${CloseWindow}                      xpath://button[contains(@title, 'Close this window')]
${ClearSearch}                      xpath://button[contains(@class, 'slds-input__icon slds-input__icon_right slds-button slds-button_icon')]
${clickopenedAccount}               xpath://button[contains(@title,'Close Patricia Ferrari')]

*** Keywords ***

Start new clinical assessment

#   Click link   ${ClickAccounts}
        Set Browser Implicit Wait               15s
        Wait Until Page Contains Element     ${AccountSearch}       20s
        Click Element                        ${AccountSearch1}
        Input Text                           ${AccountSearch1}        ${AccountName}
        Press Keys                           ${AccountSearch1}          ENTER
        Click Element                        ${SelectAccountName}
        Wait Until Page Contains Element     ${NewClinicalAssessment}     25s
        Click button                         ${NewClinicalAssessment}
        Wait Until Page Contains Element     ${Next}                       20s
        Sleep  4s
        Wait Until Page Contains Element     ${CloseWindow}                 10s
        Click Element                        ${CloseWindow}
        Sleep  4s
        Wait Until Page Contains Element    ${clickopenedAccount}           25s
        Sleep  2s
        Click Element                       ${clickopenedAccount}


Account Dropdown Selection
# Click Element                ${ClickAccountDropdown}
# Click Link                   ${ClickAccounts}
        Set Browser Implicit Wait               15s
        Wait Until Page Contains Element       ${AccountSearch}         30s
         Click Element                         ${AccountSearch1}
         Input Text                            ${AccountSearch1}       ${AccountName}
         Press Keys                            ${AccountSearch1}        ENTER
#Maximize Browser Window
#Wait Until Page Contains Element  ${SelectAccountName}  18s
        Click Element                           ${SelectAccountName}

NewHousehold Pageload
        Set Browser Implicit Wait               15s
        Wait Until Page Contains Element        ${SelectNewHouseholdMember}     30s
        Click Element                           ${SelectNewHouseholdMember}
        Sleep  4s
        Wait Until Page Contains Element         ${CloseWindow}                 25s
        Click Element                            ${CloseWindow}
        Sleep  4s
        Wait Until Page Contains Element         ${clickopenedAccount}          25s
        Sleep  2s
        Click Element                             ${clickopenedAccount}

NewEncounter Pageload
        Set Browser Implicit Wait               15s
        Wait Until Page Contains Element        ${SelectNewEncounter}       30s
        Click Element                           ${SelectNewEncounter}
        Sleep  4s
        Wait Until Page Contains Element        ${CloseWindow}              25s
        Click Element                           ${CloseWindow}
        Sleep  4s
        Wait Until Page Contains Element           ${clickopenedAccount}       25s
        Sleep  2s
        Click Element   ${clickopenedAccount}
