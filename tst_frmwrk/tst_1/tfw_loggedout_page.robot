*** Settings ***
Library                              SeleniumLibrary 


*** Variables ***
${wordpress_ready}                  //h1[contains(text(),'Be ready whenever, wherever inspiration strikes.')]


*** Keywords ***
Varify user logout
    Page Should Contain Element    ${wordpress_ready}
    Log To Console                 User logged out successfully
    