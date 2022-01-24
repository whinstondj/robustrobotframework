*** Settings ***
Documentation    Here we have the page object actions for homepage
Library     SeleniumLibrary
Variables   ../Locators/HomeElements.py

*** Keywords ***
Verify Homepage Title
    title should be    La tienda de Winston Castillo

Click on Contact
    set focus to element   ${contactUsLink}
    click element   ${contactUsLink}