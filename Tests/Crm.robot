*** Settings ***
Documentation    This is some basic info about the suite
Resource        ../Resources/CRMsite.robot
Resource        ../Resources/Common.robot

Test Setup      Begin Web Test
Test Teardown    End Web Test
#Run Script
#robot -d results tests/crm.robot - Normal Execiution
#robot -d results -v BROWSER:edge tests/crm.robot -- Command line by changing browser
#robot -d results -t "Should be able to Open Browser" tests - For a single *** test cases ***
#robot -d results -i Smoke tests        -- Using Tag

*** Variables ***
${BROWSER} =    headlesschrome
${Email} =      samad@vmware.com
${Password} =   Samad@7203v12
${URL} =        https://automationplayground.com/crm
*** Test Cases ***
LogIn
   [Documentation]    This some basic Info about suite
   [Tags]             Signin
    CRMsite.Open Webpage
    CRMsite.LogIn

Customer creation
   [Documentation]    This some basic Info about suite
   [Tags]             Addcustomer

    CRMsite.Open Webpage
    CRMsite.LogIn
    CRMsite.Create New Customer
    CRMsite.Verify New Customer created

