*** Settings ***
Library         SeleniumLibrary

*** Test Cases ***
Amazon
    open browser    about:Blank     chrome
    maximize browser window
    go to       https://www.amazon.com
    sleep   2s
    close browser