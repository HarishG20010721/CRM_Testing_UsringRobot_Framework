*** Settings ***
Documentation  Customer Services Page Object
Library  SeleniumLibrary

*** Variables ***

${Page_Header} =  tag=h2
${Logout_link} =  xpath=//a[@class='nav-link']
${new_customer_link} =  id=new-customer
${Add_Customer_Success_Message_Locator} =  id=Success

*** Keywords ***

Validate Page Should Contain Header
    wait until page contains element  ${Page_Header}

Click On New Customer Link
    click link  ${new_customer_link}
    log  Clicked on New Customer Link

Click On Logout Link
    Log  Clicked on Logout Link
    click link  ${Logout_link}

Validate Customer is Successfully Added or Not
    wait until element is visible  ${Add_Customer_Success_Message_Locator}