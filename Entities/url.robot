*** Settings ***
Library    SeleniumLibrary    

*** Variables ***
${url}       https://parabank.parasoft.com/parabank/index.htm
${browser}    chrome

*** Keywords ***
Open Browser and Maximize
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

