*** Settings ***
Resource  ../Resources/Common.robot
Resource  ../Resources/POM/LoginPage.robot
Resource  ../Resources/POM/HomePage.robot
Resource  ../Resources/POM/CustomerServicePage.robot
Resource  ../Resources/POM/LogoutPage.robot
Resource  ../Resources/POM/AddCustomer.robot

Test Setup  Start Web Testing
Test Teardown  Stop Web Testing

*** Variables ***

${Remember_me_check_box_status} =  true


*** Test Cases ***

Home page should load Test

    [Documentation]  Validate Home Page is Open When User Open The Website
    [Tags]  Smoke  Home  1001
    HomePage.Validate Web Location Before Login
    Common.Get Screenshot  rootPage
    HomePage.Validate Element Should be Present

Login should succeed with valid credentials

    [Documentation]  Login Test Valid Credentials
    [Tags]  Smoke  Login  1002
    Common.Get Screenshot  rootPage
    HomePage.Click On Signin Link
    LoginPage.Validate Page Should Contain Header
    Common.Get Screenshot  loginPage
    LoginPage.Enter Email Id  harishgandolkar@gmail.com
    LoginPage.Enter Password  1234
    Common.Get Screenshot  loginPage_AfterEntering_Data
    LoginPage.Click on Submit Button
    CustomerServicePage.Validate Page Should Contain Header
    Common.Get Screenshot  dashboardPage

Login should fail with missing credentials

    [Documentation]  Login Test Invalid Credentials
    [Tags]  Functional  Login  1003
    Common.Get Screenshot  rootPagef
    HomePage.Click On Signin Link
    LoginPage.Validate Page Should Contain Header
    Common.Get Screenshot  loginPage
    LoginPage.Enter Email Id  harishgandolkar
    LoginPage.Enter Password  1234
    LoginPage.Click on Remember me Check Box
    Common.Get Screenshot  loginPage_AfterEntering_Data
    LoginPage.Click on Submit Button
    LoginPage.Validate Page Should Contain Header
    Common.Get Screenshot  dashboardPage

Should be able to log out

    [Documentation]  Should be able to log out
    [Tags]  Functional  Login  1004
    Common.Get Screenshot  rootPage
    HomePage.Click On Signin Link
    LoginPage.Validate Page Should Contain Header
    Common.Get Screenshot  loginPage
    LoginPage.Enter Email Id  harishgandolkar
    LoginPage.Enter Password  1234
    LoginPage.Click on Remember me Check Box
    Common.Get Screenshot  loginPage_AfterEntering_Data
    LoginPage.Click on Submit Button
    LoginPage.Validate Page Should Contain Header
    Common.Get Screenshot   dashboardPage
    CustomerServicePage.Click On Logout Link
    Common.Get Screenshot   signoutPage
    LogoutPage.Validate Signed Out Header Presence


Should be able to add new customer

    [Documentation]  Should be able to add new customer
    [Tags]  Contacts  Smoke  1005
    Common.Get Screenshot  rootPage
    HomePage.Click On Signin Link
    LoginPage.Validate Page Should Contain Header
    Common.Get Screenshot  loginPage
    LoginPage.Enter Email Id  harishgandolkar@gmail.com
    LoginPage.Enter Password  1234
    Common.Get Screenshot  loginPage_AfterEntering_Data
    LoginPage.Click on Submit Button
    CustomerServicePage.Validate Page Should Contain Header
    Common.Get Screenshot  dashboardPage
    CustomerServicePage.Click On New Customer Link
    Common.Get Screenshot  addCustomerPage
    AddCustomer.Validate Add Customer Header is Visible
    AddCustomer.Enter Email Id  harish2001@gmail.com
    AddCustomer.Enter First Name  Harish
    AddCustomer.Enter Last Name  Gandolkar
    AddCustomer.Enter City  Hubli
    AddCustomer.Select State  FL
    AddCustomer.Select Gender  male
    AddCustomer.Click On Promotional list
    Common.Get Screenshot  addCustomerPage_After_Entering_Data
    AddCustomer.Click On Submit Button
    CustomerServicePage.Validate Customer is Successfully Added or Not
    Common.Get Screenshot  dashboardPage

Should be able to cancel adding new customer

    [Documentation]  Should be able to cancel adding new customer
    [Tags]  Contacts  Functional  1006
    Common.Get Screenshot  rootPage
    HomePage.Click On Signin Link
    LoginPage.Validate Page Should Contain Header
    Common.Get Screenshot  loginPage
    LoginPage.Enter Email Id  harishgandolkar@gmail.com
    LoginPage.Enter Password  1234
    Common.Get Screenshot  loginPage_AfterEntering_Data
    LoginPage.Click on Submit Button
    CustomerServicePage.Validate Page Should Contain Header
    Common.Get Screenshot  dashboard
    CustomerServicePage.Click On New Customer Link
    Common.Get Screenshot  addCustomerPage
    AddCustomer.Validate Add Customer Header is Visible
    AddCustomer.Click On Cancle Link
    Common.Get Screenshot  dashboardPage
    CustomerServicePage.Validate Page Should Contain Header

