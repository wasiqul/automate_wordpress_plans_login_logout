*** Settings ***
Library                              SeleniumLibrary 

Resource                             tfw_header_bar.robot
Resource                             tfw_initial.robot
Resource                             tfw_login_page.robot
Resource                             tfw_loggedin_page.robot
Resource                             tfw_loggedout_page.robot
Resource                             tfw_plan_price_page.robot

Suite Setup                          tfw_initial.Initial open and scroll
Suite Teardown                       Close Browser

*** Variables ***


*** Keywords ***

   
*** Test Cases ***
    
Navigate plan_price page
    tfw_header_bar.Click on plan_price
        
    tfw_plan_price_page.Scroll till configure plan    
    tfw_plan_price_page.Validate different plans

User login
    tfw_header_bar.Click on login
    
    tfw_login_page.Login to account
    
    tfw_loggedin_page.Varify user login  
    
User logout
    tfw_loggedin_page.User logout 
    tfw_loggedout_page.Varify user logout
    
    