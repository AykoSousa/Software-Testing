*** Settings ***
Documentation        Configurações

Library        SeleniumLibrary

Resource       pages/SingupPage.robot

*** Variables ***
${BROWSER}                         Chrome
${URL}                             https://walkdog.vercel.app/signup

*** Keywords ***
Start session
    Open Browser       ${URL}      ${BROWSER}
    Set Window Size    1920    1080

Finish session
    Capture Page Screenshot
    Close Browser