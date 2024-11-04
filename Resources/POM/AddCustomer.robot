*** Settings ***
Documentation  Add Customer Page Object
Library  SeleniumLibrary

*** Variables ***

${ADD_CUSTOMER_HEADER} =  tag=h2
${EMAIL_ID_ADDCUSTOMART_LOCATOR} =  id=EmailAddress
${FIRST_NAME_LOCATOR} =  id=FirstName
${LAST_NAME_LOCATOR} =  id=LastName
${CITY} =  id=City
${STATE} =  id=StateOrRegion
${GENDER} =  xpath=//input[@value='male']
${PROMOTIONAL_LIST} =  xpath=//input[@value='promos-yes']
${SUBMIT_BUTTON} =  xpath=//button[@class='btn btn-primary']
${CANCLE_LINK} =  xpath=//a[@class='btn btn-default']

*** Keywords ***

Validate Add Customer Header is Visible
    wait until page contains element  ${ADD_CUSTOMER_HEADER}
    Execute javascript       document.body.style.zoom="80%"

Enter Email Id
    [Arguments]  ${email_id}
    input text  ${EMAIL_ID_ADDCUSTOMART_LOCATOR}  ${email_id}
    log  Email is Entered

Enter First Name
    [Arguments]  ${first_name}
    input text  ${FIRST_NAME_LOCATOR}  ${first_name}
    log  First Name is Entered

Enter Last Name
    [Arguments]  ${last_name}
    input text  ${LAST_NAME_LOCATOR}  ${last_name}
    log  Last Name is Entered

Enter City
    [Arguments]  ${city_name}
    input text  ${CITY}  ${city_name}
    log  City is Entered

Select State
    [Arguments]  ${city_code}
    click element  ${STATE}
    click element  xpath=//option[@value='${city_code}']
    log  State is Selected

Select Gender
    [Arguments]  ${gender}
    click element  xpath=//input[@value='${gender}']
    log  Gender is Selected

Click On Promotional list
    click element  ${PROMOTIONAL_LIST}
    log  Clicked on Promotional List check box

Click On Submit Button
    wait until element is visible  ${SUBMIT_BUTTON}
    click button  ${SUBMIT_BUTTON}
    log  Clicked On Submit Button

Click On Cancle Link
    click link  ${CANCLE_LINK}
    log  Cliced on Cancle link
