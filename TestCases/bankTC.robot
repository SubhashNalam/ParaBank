*** Settings ***
Library    SeleniumLibrary
Resource    ../InterfaceKeywords/bankIK.robot
Resource    ../Entities/url.robot
Suite Setup    Open Browser and Maximize

*** Test Cases ***
Resetting Database
    [Tags]    Reset
    Given user will try to click on admin page
    When user will try to click on clean button for database
    Then user will try to see the message database cleaned

Registering in the bank
    [Tags]    Register
    Given user will try to click on register
    When user will try to enter his details
    Then user will try to see welcome screen

Logging into the bank
    [Tags]    Login
    Given user will opens the bank page url
    When user will try to login with his credentials
    Then user will try to see his account overview

Transferring Amount
    [Tags]    Transfer
    Given user will try to select the money transfer page
    When user will try to enter the details
    Then user will expect to see transfer complete message

Doing Bill Payment
    [Tags]    Payment
    Given user will try to select the bill payment page
    When user will try to enter payment details
    Then user will try see the message bill payment complete


