*** Settings ***
Library                              SeleniumLibrary 


*** Variables ***
${configure_plan}                    //span[contains(text(),'Need an enterprise solution? WordPress VIP provide')]
${personal_plan}                     //h3[contains(text(),'Personal')]
${premium_plan}                      //h3[contains(text(),'Premium')]
${business_plan}                     //h3[contains(text(),'Business')]
${ecommerce_plan}                    //h3[contains(text(),'eCommerce')]


*** Keywords ***
Scroll till configure plan
    Scroll Element Into View         ${configure_plan}
    Log To Console                   Configure plan is available
    
Validate different plans
    Page Should Contain Element      ${personal_plan}    
    Log To Console                   Personal plan is available
    
    Page Should Contain Element      ${premium_plan}
    Log To Console                   Premium plan is available
    
    Page Should Contain Element      ${business_plan}
    Log To Console                   Business plan is available
    
    Page Should Contain Element      ${ecommerce_plan}
    Log To Console                   eCommerce plan is available
    