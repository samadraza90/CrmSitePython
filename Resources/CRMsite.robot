*** Settings ***
Resource    ../Resources/PO/Landingpage.robot
Resource    ../Resources/PO/Navbar.robot
Resource    ../Resources/PO/LoginPage.robot
Resource    ../Resources/PO/Newcustomer.robot

*** Keywords ***
Open Webpage
    Landingpage.Load Page
    Landingpage.Verify Page Loaded

LogIn
    Navbar.Signin
    Navbar.Verify Signin Page
    LoginPage.Input Creds
    LoginPage.Submit Login
    LoginPage.Verify Login

Create New Customer
    LoginPage.New Customer
    Newcustomer.Verify Add Customer Page
    Newcustomer.Input Customer Details
    Newcustomer.Submit New Customer Details

Verify New Customer created
    Newcustomer.Verify New Customer Created

