*** Settings ***
Library     SeleniumLibrary
Library     RequestsLibrary
Resource    ${RESOURCE_PATH}
#Documentation   An Example Resource File
Resource       SMK_01_Login.robot


Documentation  As a tester
...     I want to specify feature files and translate it to robotframework
...     So I can use the User stories from JIRA

#*** Variables ***


*** Test Cases ***
Scenario: NHS Test&Trace screen visible after successful login
     [Tags]     Smoke

     Login to application as agent


#*** Keywords ***
#

Login to application as agent
The user has browsed to the login page
#    ${options}=     Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys
#    Call Method     ${options}    add_argument    --disable-notifications
#    Call Method     ${options}    add_argument    --incognito
#    Open Browser   ${SITEURL}   ${browser}  options=${options}
#
#
##Submit Credentials
#The user enters the Username
##    [Arguments] ${Username}
#    Input Text   id:username  ${Username}
#
#The user enters the password
##    [Arguments] ${Password}
#    Input Text   id:password  ${Password}
#
##Click Login
#The user clicks on login
##   [Arguments] ${ClickLogin}
#    Click Element    id:Login  ${ClickLogin}
#
##Title Page is displayed
#NHS Test and Trace home page is displayed
#    Set Browser Implicit Wait     15s
#           ${Title}=        Get Title
#           ${new_url}   Get Location
#           Log to console    ${new_url}
#
##           ${new_title}   Get Title
##           Log to console  ${new_title}
##Validation for URL
#           Should Be Equal            ${new_url}     ${actual_url}
#
#
#       #Agent Login
#
       Input Text      ${Search}            ${AgentName}
       Press Keys      ${Search}            ENTER
       Maximize Browser Window
#       Click Element   ${SelectUser}
       Click link      ${UserDetailPage}
       Click Element  name:Login   ${clicklogin2}

#       Click Element    ${UserDetailPage}
[Tear Down]  Close Browser

#For reference

#    Click Element  ${SearchFromList}
#    Press Keys  ${SearchFromList} ARROW_DOWN
#    Press Keys  ${SearchFromList}    ENTER
#    Press Keys   //span[contains(@class,'virtualAutocompleteOptionText')][5]  ENTER
#    Click Element  ${CasesList}
#    Input Text    ${CasesList}     ${inputSearch}
#Input Text  ${SearchFromList}   ${inputSearch}