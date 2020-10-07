*** Variables ***


${Clickdropdown}            xpath: //button[@title='Show Navigation Menu']
${SelectOption}              xpath://a[contains(@title, 'Cases')]
${SelectDropdownItems}       xpath://a[contains(@className, 'menuItem')]
${ClickCases}               xpath: //*[@id="navMenuList"]/div/ul/li[7]/div
${ClickData}                xpath:    //*[@id="navMenuList"]/div/ul/li[7]/div/a/span[2]/span
${ListView}                 xpath: //a[@title='Select List View']

${CaseLink}                 https://nhs--nhstest.lightning.force.com/lightning/o/Case/list

${case_link}                https://nhs--nhstest.lightning.force.com/lightning/o/Case/list
${CaseSearch}               xpath://input[contains(@name,'Case-search-input')]

${caseNumber}               00002723

${SelectCaseNumber}         xpath://a[contains(@title, '00002723')]

${ClickContactTracingtab}   xpath://li[contains(@title, 'Start Contact Tracing')]

${ClickFeedtab}             xpath://li[contains(@title, 'Feed')]
${MiddlewindowScroll}       xpath://a[contains(@title, 'Sarah Smialowicz')]
${MiddleWindow}             xpath://flexipage-component2[contains(@data-component-id, 'flexipage_tabset')

${ClickDetailstab}          xpath://li[contains(@title, 'Details')]
${NextButton}               xpath://button[@title='Next']
${CloseCase}                xpath://button[contains(@title,'Close 00002723')]
${CaseOwner}                xpath://*[@id="2947:0"]/div/div[4]/div[2]/div/div[1]/span
${EditCaseOwner}             xpath: //button[@title='Edit Case Owner']
${ButtonClick}               css:#tab-3 > slot > flexipage-component2 > slot > flexipage-aura-wrapper > div > article > div > div > div.content > footer > div.actionsRight > button
${deleteIcon}                  css=span.deleteIcon
${CaseOwnerDropdownbutton}      xpath://*[@id='4016:0']/div/a
${SelectCaseOwnerUsers}         xpath://span[contains(@title, 'Users')]
${SelectCaseOwnerQueues}        xpath://span[contains(@title, 'Queues')]
${SearchUser}                   xpath://input[@placeholder='Search Users...']
${AgentName}                    Lara James
${SelectAgent}                  xpath://div[contains(@title, 'Lara James')]
${SaveButton}                    xpath: //button[@title='Save']
${leftWindowScroll}             xpath://flexipage-record-home-scrollable-column[contains(@class,'col left-col slds-col slds-size_3-of-12')]
${ButtonClick}              css:#tab-3 > slot > flexipage-component2 > slot > flexipage-aura-wrapper > div > article > div > div > div.content > footer > div.actionsRight > button

#{SearchFromList}           xpath://input[@class="slds-input default input uiInput uiInputTextForAutocomplete uiInput--default uiInput--input"]

#?filterName=00B3L000000UIMHUA4

#${CasesList}                   xpath://input[@type='text']

#${inputSearch}     Test & Trace - North West
#${inputLink}      xpath://a[contains(@text,'Test & Trace - North West')]
#    //*[contains(text(),'${Test & Trace - North West}')]
#    Wait Until Page Contains Element     ${NextButton}   10s
#    Wait Until Element Is Visible   ${NextButton}
#    Click Element   ${NextButton}



*** Keywords ***


When Click on Start contact Tracing

   Click Element            ${Clickdropdown}
   Sleep  4s
   #Click Element            ${SelectDropdownItems}
   Sleep  2s
   Click Element           ${SelectOption}
   Sleep  3s
   Click Element            ${CaseSearch}
   Input Text               ${CaseSearch}       ${caseNumber}
   Click Element             ${SelectCaseNumber}
   Sleep  2s
#  Wait Until Page Contains Element         ${ClickContactTracingtab}           15s
   Click Element              ${ClickContactTracingtab}
   Sleep  4s
#   Wait Until Page Contains Element   ${ClickFeedtab}         15s
   Click Element         ${ClickFeedtab}
#   Scroll Element Into View   ${MiddleWindow}
#   Mouse Down      ${MiddlewindowScroll}
#   Execute Javascript    window.scrollTo(0,2000)
   Sleep  4s
#   Wait Until Page Contains Element   ${ClickDetailstab}        15s
   Click Element        ${ClickDetailstab}
   Sleep  4s
   Click Element         ${CloseCase}

#Scroll Page To Location
#    Execute Javascript    window.scrollTo(0,2000)

Case assignment to Agent
   Click Element               ${Clickdropdown}
   Click Element            ${CaseSearch}
   Input Text               ${CaseSearch}       ${caseNumber}
   Click Element             ${SelectCaseNumber}
   Mouse Down
   Wait Until Page Contains Element         ${CaseOwner}           15s
   Scroll Element into View          ${leftWindowScroll}
  Click Element             ${EditCaseOwner}
  Click Element             ${deleteIcon}
  Click Element             ${CaseOwnerDropdownbutton}
  Click Element             ${SelectCaseOwnerUsers}
  Click Element             ${SearchUser}
  Input Text                ${SearchUser}     ${AgentName}
  Sleep        4s
  Press Keys                ${SearchUser}                 ENTER
  Click Element             ${SelectAgent}
  Wait Until Page Contains Element         ${SaveButton}           10s
  Click Element            ${SaveButton}
  Sleep        4s
