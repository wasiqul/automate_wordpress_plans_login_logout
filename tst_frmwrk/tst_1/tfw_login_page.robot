*** Settings ***
Library                                  SeleniumLibrary
Library                                  OperatingSystem


*** Variables ***
${username_input_field}                 //input[@id='usernameOrEmail']
${cont_button}                          //button[contains(text(),'Continue')]
${password_input_field}                 //input[@id='password']
${login_button}                         //button[contains(text(),'Log In')]

${google_button}                        //body/div[@id='wpcom']/div[1]/div[1]/div[1]/div[1]/main[1]/div[1]/div[1]/form[1]/div[3]/div[1]/button[1]
${apple_button}                         //body/div[@id='wpcom']/div[1]/div[1]/div[1]/div[1]/main[1]/div[1]/div[1]/form[1]/div[3]/div[1]/button[2]


*** Keywords ***
Login to account
    ${username_value}=     Get File     tst_1\\user_name.txt    
    ${password_value}=     Get File     tst_1\\user_password.txt

    Click Element          ${username_input_field}    
    Input Text             ${username_input_field}   ${username_value}    
    Click Button           ${cont_button}    
    Log To Console         User name is provided from text file
    
    Click Element          ${password_input_field}    
    Input Text             ${password_input_field}   ${password_value}    
    Click Button           ${login_button} 
    Log To Console         Password is provided from text file
    