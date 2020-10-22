*** Settings ***
Library                              SeleniumLibrary 


*** Variables ***
${my_sites_link}                    //span[contains(text(),'My Sites')]
${account_image_icon_link}          //header/a[3]/span[1]/img[1]
${logout_button}                    //button[contains(text(),'Log out')]


*** Keywords ***
Varify user login
    Page Should Contain Element    ${my_sites_link}
    Log To Console                 User logged in successfully
    
User logout
    Click Element                  ${account_image_icon_link}
    Click Element                  ${logout_button}
    Log To Console                 User is logging out