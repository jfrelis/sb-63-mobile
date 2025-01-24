*** Settings ***
Resource            ../PageObjects/base.robot
Resource            ../PageObjects/Homepage/homePage.robot
Resource            ../PageObjects/LoginPage/loginPage.robot
Test Setup          Run Keywords        Open Flight Application    AND    Verify Home Screen Appears
Test Teardown       Close Flight Application

*** Test Cases ***
User should be able to login with valid data
    Click Sign In Button On Home Screen
    Input Username    username=support@ngendigital.com
    Input Password
    Click Sign In Button On Login Screen
    Verify User Successfully Login
    
User should be able to login with not valid data
    Click Sign In Button On Home Screen
    Input Username    username=support.com
    Input Password
    Click Sign In Button On Login Screen
    Verify User Successfully Login
