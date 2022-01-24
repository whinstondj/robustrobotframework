*** Settings ***
Documentation    This is my first automation of the video class
Library     SeleniumLibrary
Resource    ../PageObject/HomePage.robot
Resource    ../PageObject/ContactUsPage.robot

*** Test Cases ***
0001 Opening the website
    [Tags]    Smoke
    Open Browser    https://winstoncastillo.com/robot-selenium/     chrome
    Verify Homepage Title
    Click on Contact

002 Sending User Information
    Verify Contact Title
    Set Focus on Username Field
    Type Name
    Type Email
    Type Enquiry
    Take Picture
    Send Information
    close browser