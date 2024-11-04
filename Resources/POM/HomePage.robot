*** Settings ***
Documentation  Home Page Object
Library  SeleniumLibrary

*** Variables ***

${Signin_link} =  id=SignIn
${location_befor_sighin} =  https://automationplayground.com/crm
${location_after_signin} =  https://automationplayground.com/crm/login.html
${HomePage_header_element} =  tag=h2

*** Keywords ***

Click On Signin Link
    Log  Clicked On Signin Link
    click link  ${Signin_link}
    wait until location is  ${location_after_signin}

Validate Web Location Before Login
    wait until location contains  ${location_befor_sighin}

Validate Element Should be Present
    wait until page contains  ${HomePage_header_element}

