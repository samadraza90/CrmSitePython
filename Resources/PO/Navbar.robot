*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${SignInLink} =     xpath=//*[text()="Sign In"]

*** Keywords ***
Signin
    click link             ${SignInLink}
Verify Signin Page
    page should contain    Login