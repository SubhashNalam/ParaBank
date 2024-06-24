*** Settings ***
Library    SeleniumLibrary
Resource    ../Entities/url.robot
Resource    ../Entities/testdata.robot
Resource    ../Entities/locators.robot

*** Keywords ***
###### Reset Page ######
user is able to click on admin page
    Click Element    ${adminPage_Link}
user is able to click on clean button for database
    Click Button    ${clean_Btn}
user is able to see the message database cleaned
    Page Should Contain    ${result_Admin}
    Capture Page Screenshot
    Sleep    2s

###### Register  ######
user able to to click on register
    Click Element    ${register_Link}
user is able to enter his details
    Input Text    ${fName_Xp}         ${fName}
    Input Text    ${lName_Xp}         ${lName}
    Input Text    ${addr_Xp}          ${addr}
    Input Text    ${city_Xp}          ${city}
    Input Text    ${state_Xp}         ${state}
    Input Text    ${zipCode_Xp}       ${zipCode}
    Input Text    ${phone_Xp}         ${phone}
    Input Text    ${ssn_Xp}           ${ssn}
    Input Text    ${rUserName_Xp}     ${username}
    Input Text    ${rPass_Xp}         ${pass}
    Input Text    ${rConf_Pass_Xp}    ${pass}
    Capture Page Screenshot
    Click Button    ${register_Btn}
user is able to see welcome screen
    Page Should Contain    ${result_Regis} ${username}
    Capture Page Screenshot
    Sleep    3s

###### Login ######
user will able to launch the browser and opens the bank page url
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Capture Page Screenshot
user is able to login with his credentials
    Input Text    ${username_Xp}     ${username} 
    Input Password    ${pass_Xp}    ${pass}
    Capture Page Screenshot
    Click Button   ${login_Btn}
user is able to see his account overview
    Page Should Contain    ${result_AO}
    Capture Page Screenshot

###### Transfer Page ######
user will able to select the money transfer page
    Click Element    ${transfer_Xp}
    Capture Page Screenshot
user will able to enter the details
    Input Text    ${amount_Xp}     ${amount}
    Select From List By Index   ${from_Acc_Xp}    ${index}
    Select From List By Index   ${to_Acc_Xp}      ${index}
    Capture Page Screenshot
    Click Button    ${transfer_Btn}
    Sleep    2s
user able to see transfer complete message
    Page Should Contain    ${result_transfer}
    Capture Page Screenshot
    Sleep    3s

######  Payment Page ######
user is able to select the bill payment page
    Click Element    ${bill_Pay_Link}
user is able to enter payment details
    Input Text                   ${payee_Name_Xp}   ${payee_Name}
    Input Text                   ${pAddr_Xp}        ${addr}
    Input Text                   ${pCity_Xp}        ${city}
    Input Text                   ${pState_Xp}       ${state}
    Input Text                   ${pZipCode_Xp}     ${zipCode}
    Input Text                   ${pPhone_Xp}       ${phone}
    Input Text                   ${account_Xp}      ${account}
    Input Text                   ${vAccount_Xp}     ${account}
    Input Text                   ${pAmount_Xp}      ${amount}
    Select From List By Index    ${fAccount_Xp}     ${index}
    Capture Page Screenshot
    Click Button    ${sPayment_Btn}
user is able to see the message bill payment complete
    Page Should Contain    ${result_billPay}
    Capture Page Screenshot
    Sleep    3s