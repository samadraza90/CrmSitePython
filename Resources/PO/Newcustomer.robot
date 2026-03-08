*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Add Customer Page
    page should contain     Add Customer

Input Customer Details
    input text              id=EmailAddress     admin@gmail.com
    input text              id=FirstName        admin
    input text              id=LastName         Khan
    input text              id=City             NewYork
    select from list by value    id=StateOrRegion   FL
    select radio button        gender      male
    #sleep       3s
    execute javascript    window.scrollBy(0,400)
    select checkbox         name=promos-name

Submit New Customer Details
    click button            Submit

Verify New Customer Created
    wait until page contains        Success! New customer added.