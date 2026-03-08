*** Settings ***
Library     SeleniumLibrary

*** Variables ***
#${BROWSER}
*** Keywords ***
Begin Web Test
    open browser     about:Blank   ${BROWSER}
    maximize browser window
End Web Test
     close browser