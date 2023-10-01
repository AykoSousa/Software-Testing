*** Settings ***
Documentation        Arquivo que representa página de cadastro com ações e elementos

Library        SeleniumLibrary

*** Keywords ***
Fill singup form
    [Arguments]        ${name}    ${email}    ${cpf}    ${cep}    ${number}    ${details}
    
    Input Text         css=input[name="name"]             ${name}
    Input Text         css=input[name="email"]            ${email}
    Input Text         css=input[name="cpf"]              ${cpf}
    Input Text         css=input[name="cep"]              ${cep}
    Input Text         css=input[name="addressNumber"]    ${number}
    Input Text         css=input[name="addressDetails"]   ${details}
    Choose File        css=input[type="file"]             ${EXECDIR}/fixtures/rg.webp

Submit signup form
    Click Element      xpath=//button[contains(text(), "Cadastrar")]

Popup have text
    [Arguments]        ${MSG_SUCESSO}

    ${element}        Set Variable     xpath=//div[@class="swal2-html-container"]

    Wait Until Element Is Visible     ${element}    5
    Element Should Contain            ${element}    ${MSG_SUCESSO}
Alert have text
    [Arguments]       ${MSG_ERROR}

    ${element}    Set Variable    xpath=//span[@class="alert-error"][text()="${MSG_ERROR}"]

    Wait Until Element Is Visible     ${element}    5
    Capture Element Screenshot        ${element}

