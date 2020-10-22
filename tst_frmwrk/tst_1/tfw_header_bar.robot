*** Settings ***
Library                  SeleniumLibrary 


*** Variables ***
${logo_icon}             //header/nav[1]/ul[1]/li[1]/a[1]/*[1]
${products}              //button[contains(text(),'Products')]
${features}              //button[contains(text(),'Features')]
${resources}             //button[contains(text(),'Resources')]
${plan_price}            //header/nav[1]/ul[1]/li[5]/a[1]
${login}                 //header/nav[1]/ul[2]/li[1]/a[1]
${get_started}           //a[contains(text(),'Get Started')]


*** Keywords ***
    
Click on plan_price
    Click Element        ${plan_price}
    Log To Console       Navigating to plan and price page
    
Click on login
    Click Element        ${login}
    Log To Console       Navigating to login page
    