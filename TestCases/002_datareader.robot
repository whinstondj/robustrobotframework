*** Settings ***
Documentation    here we will read data from an excel file
Library     SeleniumLibrary
Library     DataDriver      file=data/TestData.xlsx
Test Template   Enter User Information
Resource    ../PageObject/HomePage.robot
Resource    ../PageObject/ContactUsPage.robot

*** Test Cases ***
Send the information ${username} with the email ${useremail}

*** Keywords ***
Enter User Information
    [Arguments]         ${username}     ${useremail}    ${userenquiry}
    input text      ${userNameField}     ${username}
    input text      ${userEmailField}        ${useremail}
    input text      ${enquiryField}        ${userenquiry}
    Take Picture
    Send Information
    Click Continue
    Verify Homepage Title
    Click on Contact
    Verify Contact Title