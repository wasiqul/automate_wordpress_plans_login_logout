*** Settings ***
Library                              SeleniumLibrary


*** Variables ***
${url}                              https://wordpress.com/


*** Keywords ***
Initial open and scroll
    Open Browser                     ${url}    chrome
    
    Set Selenium Speed               2 seconds
    Set Selenium Timeout             10 seconds
    
    Maximize Browser Window
    Log To Console                   User is in the site
    
    