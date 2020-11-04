*** Settings ***


*** Variables ***

${browser}      chrome
${SITEURL}      https://nhs--nhstest.my.salesforce.com/
${Username}     swapna.panthangi-cic-uk@ibm.com.nhstest
${Password}     *****
${ClickLogin}
${actual_url}       https://nhs--nhstest.lightning.force.com/one/one.app
${DropdownMenu}     xpath://button[@title='Show Navigation Menu']

*** Keywords ***

Open Login Page
    ${options}=     Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys
    Call Method     ${options}    add_argument    --disable-notifications
#    Call Method     ${options}    add_argument    --incognito
    Call Method     ${options}    add_argument      --headless
     Call Method     ${options}    add_argument      --start-maximized
     #Call Method    ${Options}    add_argument    --disable-dev-shm-usage
    # Call Method    ${Options}    add_argument    --disable-gpu
    # Call Method    ${Options}    add_argument    --no-sandbox

        Open Browser   ${SITEURL}   ${browser}  options=${options}
        Input Text   id:username  ${Username}
        Input Text   id:password  ${Password}
        Click Element    id:Login  ${ClickLogin}
        Set Browser Implicit Wait     15s
           ${Title}=        Get Title
           ${new_url}   Get Location
#            Should Be Equal            ${new_url}     ${actual_url}

Dropdown Menu Selection
           Click Element   ${DropdownMenu}
