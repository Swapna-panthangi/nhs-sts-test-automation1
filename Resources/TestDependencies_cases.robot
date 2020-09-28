*** Variables ***


${Clickdropdown}            xpath: //button[@title='Show Navigation Menu']
${ClickCases}               xpath: //*[@id="navMenuList"]/div/ul/li[7]/div
${ClickData}                xpath:    //*[@id="navMenuList"]/div/ul/li[7]/div/a/span[2]/span
${ListView}                 xpath: //a[@title='Select List View']

${CaseLink}                 https://nhs--nhstest.lightning.force.com/lightning/o/Case/list

${case_link}                https://nhs--nhstest.lightning.force.com/lightning/o/Case/list
${CaseSearch}               xpath://input[contains(@name,'Case-search-input')]

${caseNumber}               00002714

${SelectCaseNumber}         xpath://a[contains(@title, '00002714')]

${ClickContactTracingtab}   xpath://li[contains(@title, 'Start Contact Tracing')]

${ClickFeedtab}             xpath://li[contains(@title, 'Feed')]
${MiddlewindowScroll}       xpath://a[contains(@title, 'Sarah Smialowicz')]
${MiddleWindow}             xpath://flexipage-component2[contains(@data-component-id, 'flexipage_tabset')

${ClickDetailstab}          xpath://li[contains(@title, 'Details')]
${NextButton}               xpath://button[@title='Next']
${CloseCase}                xpath://button[contains(@title,'Close 00002714')]


${ButtonClick}              css:#tab-3 > slot > flexipage-component2 > slot > flexipage-aura-wrapper > div > article > div > div > div.content > footer > div.actionsRight > button

#{SearchFromList}  xpath://input[@class="slds-input default input uiInput uiInputTextForAutocomplete uiInput--default uiInput--input"]

#?filterName=00B3L000000UIMHUA4

#${CasesList}        xpath://input[@type='text']

#${inputSearch}     Test & Trace - North West
#${inputLink}      xpath://a[contains(@text,'Test & Trace - North West')]
#    //*[contains(text(),'${Test & Trace - North West}')]
#    Wait Until Page Contains Element     ${NextButton}   10s
#    Wait Until Element Is Visible   ${NextButton}
#    Click Element   ${NextButton}



*** Keywords ***


Start contact Tracing

   Click Element            ${Clickdropdown}
   Click Element            ${CaseSearch}
   Input Text               ${CaseSearch}       ${caseNumber}
   Click Element             ${SelectCaseNumber}
   Wait Until Page Contains Element         ${ClickContactTracingtab}           15s
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


