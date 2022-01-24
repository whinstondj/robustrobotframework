*** Settings ***
Documentation    This is my first automation of the video class
Library     SeleniumLibrary

*** Test Cases ***
0001 Opening the website
    [Tags]    Smoke
    Open Browser    https://winstoncastillo.com/robot-selenium/     chrome
    title should be     La tienda de Winston Castillo
    set focus to element      link:Contact Us
    click element       link:Contact Us

002 Sending User Information
    title should be     Contact Us
    set focus to element    input-name
    input text      input-name    First Name
    input text      input-email        email@email.com
    input text      input-enquiry   Here is the text major to 10 chars I want to send
    capture page screenshot
    click element       xpath://*[@id="content"]/form/div/div/input
    close browser