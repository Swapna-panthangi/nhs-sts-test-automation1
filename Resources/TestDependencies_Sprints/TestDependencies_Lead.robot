*** Variables ***
${SearchLead}                   xpath://input[contains(@name,'Lead-search-input')]
${LeadName}                     Vera Vaun
${SelectLeadName}               xpath://a[contains(@title, 'Vera Vaun')]
${ClickEditOwnerIcon}           id:change_owner
${ChangeOwnerButton}            xpath://div[contains(@title, 'Change Owner')]
${CheckBox}                     xpath://*[@id='split-left']/div/div/div/div/div[2]/div/div[1]/div[2]/div[2]/div[1]/div/div/table/tbody/tr[1]/td[2]/span/span/label/span[1]
${SelectTheCheckBox}            xpath://*[@id='split-left']/div/div/div/div/div[2]/div/div[1]/div[2]/div[2]/div[1]/div/div/table/tbody/tr/td[2]/span/span/label/span[2]
${OwnerDropDownButton}          xpath://*[@id='22:1272;a']/div/div/a
${OwnerDropDownButton1}          xpath://lightning-icon[@class='entityDownIcon slds-button__icon slds-m-vertical--xx-small slds-p-top--xxx-small slds-button-space-left slds-icon-utility-down slds-icon_container']
${SelectCaseOwnerUsers}         xpath://span[contains(@title, 'Users')]
${SelectCaseOwnerPeople}        xpath://span[contains(@title, 'People')]
${SearchPeople}                 xpath://input[@placeholder='Search People...']
${SelectCaseOwnerQueues}        xpath://span[contains(@title, 'Queues')]
${SearchQueues}                 xpath://input[@placeholder='Search Queues...']
${QueueName}                    Test & Trace - London
${PeopleName}                   Geetha Kartick
${SelectThePeopleName}          xpath://div[contains(@title,'Geetha Karthick')]
${SelectTheQueueName}           xpath://div[contains(@title, 'Test & Trace - London')]
${SubmitButton}                 xpath://html/body/div[4]/div[2]/div/div[2]/div/div[3]/button[2]/span
${windowId}                     xpath: //div[@class='modal-container slds-modal__container']



*** Keywords ***
Change the lead owner to Queue

  Click Element                      ${SearchLead}
  Input Text                         ${SearchLead}  ${LeadName}
  Press Keys                         ${SearchLead}               ENTER
  Sleep   5s
  Click Element                      ${CheckBox}

  Click Element                      ${ChangeOwnerButton}
  Get Window handles
   Click Element                    ${windowId}
   Wait Until Element Is Visible     ${windowId}    # Focus popup window
   Wait Until Element Is Visible     ${OwnerDropDownButton1}
   Click Element                     ${OwnerDropDownButton1}
   Click Element                     ${SelectCaseOwnerQueues}
   Wait Until Element Is Visible     ${SearchQueues}
   Click Element                     ${SearchQueues}
   Input Text                        ${SearchQueues}  ${QueueName}
   Wait Until Element Is Visible     ${SelectTheQueueName}
   Click Element                     ${SelectTheQueueName}
   ${PopWindow}=                     Get Title
   Log To Console                    New window is : \ ${PopWindow}
   Click Element                     ${SubmitButton}

Change the lead owner to People
  Click Element                      ${SearchLead}
  Input Text                         ${SearchLead}  ${LeadName}
  Press Keys                         ${SearchLead}               ENTER
  Sleep   5s
  Click Element                      ${CheckBox}
  Click Element                      ${ChangeOwnerButton}
  Get Window handles
   Click Element                    ${windowId}
   Wait Until Element Is Visible     ${windowId}    # Focus popup window
   Wait Until Element Is Visible     ${OwnerDropDownButton}
   Click Element                     ${OwnerDropDownButton}
   Click Element                     ${SelectCaseOwnerPeople}
   Wait Until Element Is Visible     ${SearchPeople}
   Click Element                     ${SearchPeople}
   Input Text                        ${SearchPeople}   ${PeopleName}
   Wait Until Element Is Visible     ${SelectThePeopleName}
   Click Element                     ${SelectThePeopleName}
   ${PopWindow}=                     Get Title
   Log To Console                    New window is : \ ${PopWindow}
   Click Element                     ${SubmitButton}






