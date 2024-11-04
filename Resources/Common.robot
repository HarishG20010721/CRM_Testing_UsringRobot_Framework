*** Settings ***
Documentation  Common Set Details
Library  SeleniumLibrary
Library  Screenshot

*** Variables ***

# Data
${url} =  https://automationplayground.com/crm
${browser} =  chrome

*** Keywords ***

Start Web Testing
    Log  Web Testing Started
    set screenshot directory  ../Results/ScreenShots
    open browser  ${url}  ${browser}
    set browser implicit wait  15s
    maximize browser window

Stop Web Testing
    Log  Web Testing Finished
    close all browsers

Get Screenshot
    [Arguments]  ${image_name}
    take screenshot  ${image_name}
