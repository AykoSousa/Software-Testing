*** Settings ***
Documentation     Suite de testes da página principal

Library           SeleniumLibrary

*** Variables ***
${URL}            https://walkdog.vercel.app/
${BROWSER}        Chrome

*** Test Cases ***
Webapp deve estar online
    Open Browser To Home Page
    Home Page Should Be Open

    [Teardown]  Close Browser

*** Keywords ***
Open Browser To Home Page
    Open Browser  ${URL}  ${BROWSER}
    Title Should Be       Walkdog by Papito

Home Page Should Be Open
    Page Should Contain    Cuidado e diversão em cada passo

