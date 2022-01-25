*** Settings ***
Documentation    Here we have the page object actions for homepage
Library     SeleniumLibrary
Variables   ../Locators/ContactPageElements.py

*** Keywords ***
Verify Contact Title
    title should be    Contact Us

Set Focus on Username Field
    set focus to element    ${userNameField}

Take Picture
    capture page screenshot

Send Information
    click element       ${submitButton}

Click Continue
    wait until element is visible    ${successButton}
    click element      ${successButton}
