*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary


Documentation  As a tester
...     I want to automate feature files in Robot Framework

*** Variables ***

${browser}    chrome
${SITEURL}    https://nhs--nhstest.my.salesforce.com/
${Username}   swapna.panthangi-cic-uk@ibm.com.nhstest
${Password}   Omsrisairam$6
${ClickLogin}
#${Title}        NHS Test & Trace
${actual_url}   https://nhs--nhstest.lightning.force.com/lightning/page/home
${Response}     xpath://span[@title='NHS Test & Trace']
${Search}       xpath://input[@placeholder='Search...']
${AgentName}    Lara James
#${SelectUser}   xpath://a[contains(text(),'Lara James')]
${UserDetailPage}   xpath://*[contains(@title,'User Detail')]
${clicklogin2}


*** Test Cases ***
Scenario: NHS Test&Trace screen visible after successful login
     [Tags]     Smoke
     Given the user has browsed to the login page
     When The user enters the Username
     And The user enters the Password
     And the user clicks on login
     Then NHS Test and Trace home page is displayed

*** Keywords ***

#Login to application
The user has browsed to the login page
    ${options}=     Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys
    Call Method     ${options}    add_argument    --disable-notifications
#    Call Method     ${options}    add_argument    --incognito
    Open Browser   ${SITEURL}   ${browser}  options=${options}
#    Log to console    ${EXECDIR}


#Submit Credentials
The user enters the Username
#    [Arguments] ${Username}
    Input Text   id:username  ${Username}

The user enters the password
#    [Arguments] ${Password}
    Input Text   id:password  ${Password}


#Click Login
The user clicks on login
#   [Arguments] ${ClickLogin}
    Click Element    id:Login  ${ClickLogin}
#      Sleep    40s


#Title Page is displayed
NHS Test and Trace home page is displayed
    Set Browser Implicit Wait     20s
           ${Title}=        Get Title
           ${new_url}   Get Location
           Log to console    ${new_url}


#           ${new_title}   Get Title
#           Log to console  ${new_title}
#Validation for URL
           Should Be Equal            ${new_url}     ${actual_url}


       #Agent Login

#       Input Text      ${Search}            ${AgentName}
#       Press Keys      ${Search}            ENTER
       Maximize Browser Window
#       Click Element   ${SelectUser}
#       Click link      ${UserDetailPage}
#       Click Element  name:Login   ${clicklogin2}

#       Click Element    ${UserDetailPage}
[Tear Down]  Close Browser




