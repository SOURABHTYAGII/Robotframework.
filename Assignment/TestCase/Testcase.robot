*** Settings ***
#Library           SeleniumLibrary
Resource    ../Keywords/keyword.robot
#Resource    ../Variables/Variables.robot

Suite Setup       Open Amazon Website
Suite Teardown    Close Browser
*** Test Cases ***
TC1 ; OPEN AMAZON WEBSITE AND CLICK ON TODAY'S Deals
    [Tags]    Smoke
   Given Scroll Down to Todays Deals And Select 3rd product   
   Then click on the 1st product of the list 

    



