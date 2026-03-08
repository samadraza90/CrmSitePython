*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Load Page
    go to                   ${URL}
Verify Page Loaded
    page should contain    Customers Are Priority One!