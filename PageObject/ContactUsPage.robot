*** Settings ***
Documentation    Here we have the page object actions for homepage
Library     SeleniumLibrary
Variables   ../Locators/ContactPageElements.py

*** Keywords ***
Verify Contact Title
    title should be    Contact Us

Set Focus on Username Field
    set focus to element    ${userNameField}

Type Name
    input text      ${userNameField}    First Name

Type Email
    input text      ${userEmailField}        email@email.com

Type Enquiry
    input text      ${enquiryField}   Here is the text major to 10 chars I want to send

Take Picture
    capture page screenshot

Send Information
    click element       ${submitButton}
