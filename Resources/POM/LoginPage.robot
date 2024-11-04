*** Settings ***
Documentation  Login Page Object
Library  SeleniumLibrary

*** Variables ***

#Data
${email_id} =  harishgandolkar123@gmail.com
${password} =  harish@123

# Locators

${LOGIN_PAGE_HEADER_ELEMENT} =  tag=h2
${EMAIL_ID_LOCATOR} =  id=email-id
${PASSWORD_LOCATOR} =  id=password
${CHECK_BOX_LOCATOR} =  id=remember
${SUBMIT_BUTTON_LOCATOR} =  id=submit-id


*** Keywords ***

Enter Email Id
    [Arguments]  ${email_id}
    Log  Email id entered ${email_id}
    input text  ${EMAIL_ID_LOCATOR}  ${email_id}

Enter Password
    [Arguments]  ${password}
    Log  Password entered ${password}
    input text  ${PASSWORD_LOCATOR}  ${password}

Click on Remember me Check Box
    Log  Clicked On Remember Check box
    Click Button  ${CHECK_BOX_LOCATOR}

Click on Submit Button
    Log  Clicked on Submit Button
    Click Button  ${SUBMIT_BUTTON_LOCATOR}

Validate Page Should Contain Header
    wait until page contains element  ${LOGIN_PAGE_HEADER_ELEMENT}

