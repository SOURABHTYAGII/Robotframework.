*** Settings ***
Library    SeleniumLibrary
Library    XML
Resource    ../Variables/Variables.robot
#Resource    ../TestCase/Testcase.robot
*** Keywords ***
Open Amazon Website
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

Scroll Down to Todays Deals And Select 3rd product
    Wait Until Element Is Visible    ${Today's deal}
    Scroll Element Into View    ${Today's deal}
    Wait Until Element Is Visible    ${Click on third item}
    Click Element    ${Click on third item}
click on the 1st product of the list 
    Wait Until Element Is Visible    ${price}    
    ${Element}    Get Text    ${price}
    Click Element    ${FirstProduct}
    Wait Until Element Is Visible    ${price1}
    ${matchingprice}    Get Text    ${price1}
    Should Be Equal    ${Element}    ${matchingprice}
    Scroll Element Into View    ${TechanicalDetails}
    ${InRow}    Get Element Count    ${Rowpath}
    FOR    ${ROW}    IN RANGE    1    ${InRow}+1  
        ${Inrange}=    Get Text    xpath://*[@id="productDetails_techspec_section_1"]/tbody/tr[${ROW}]/th
        IF    "${Inrange}" == "${Screen Resolution}"
            Log To Console    ${ROW}
            
        END
    END



