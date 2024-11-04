*** Settings ***
Documentation  Logout Page Object
Library  SeleniumLibrary

*** Variables ***

${Signed_out_header} =  tag=h2

*** Keywords ***

Validate Signed Out Header Presence
    wait until page contains element  ${Signed_out_header}