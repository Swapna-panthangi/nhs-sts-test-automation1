*** Settings ***


*** Variables ***

#@{BROWSERS}         Firefox    Chrome
${SITEURL}          https://nhs--nhstest.my.salesforce.com/
${Username}         swapna.panthangi-cic-uk@ibm.com.nhstest
${Password}         Nhs@061990
${ClickLogin}
${actual_url}       https://nhs--nhstest.lightning.force.com/one/one.app
${DropdownMenu}     xpath://button[@title='Show Navigation Menu']


*** Keywords ***
Test with Several Browsers

Given Agent Logs into Firefox Browser

    Open Browser   ${SITEURL}   ${BROWSER}

Given Agent Logs into Chrome Browser
    ${options}=     Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys
    Call Method     ${options}    add_argument      --no-sandbox
    Call Method     ${options}    add_argument      --headless
    Call Method     ${options}    add_argument      --start-maximized
    Call Method     ${options}    add_argument      --disable-gpu
    Call Method     ${options}    add_argument      --window-size\=1920,1080
    Call Method     ${options}    add_argument      --disable-dev-shm-usage
    Open Browser   ${SITEURL}   ${BROWSER}      options=${options}

Agent provides the inputs
    Input Text   id:username  ${Username}
    Input Text   id:password  ${Password}
    Click Element    id:Login  ${ClickLogin}
    Set Browser Implicit Wait     20s
           ${Title}=        Get Title
           ${new_url}   Get Location
#          Should Be Equal            ${new_url}     ${actual_url}

Dropdown Menu Selection
       Click Element   ${DropdownMenu}
