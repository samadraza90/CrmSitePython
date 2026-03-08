*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${Email}
#${Password}
${EmailInput} =     id=email-id
${PassInput} =      xpath=//*[@id="password"]
*** Keywords ***
Input Creds
    input text              ${EmailInput}     ${Email}
    input text              ${PassInput}   ${Password}

Submit Login
    click button            id=submit-id

Verify Login
    wait until page contains        Our Happy Customers

New Customer
    click link              New Customer