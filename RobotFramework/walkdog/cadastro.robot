*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}                         Chrome
${URL}                             https://walkdog.vercel.app/signup
${NOME}                            John Doe
${EMAIL}                           johndoe@gmail.com
${EMAIL_INCORRETO}                 johndoe.com
${CPF_CORRETO}                     89553509029
${CPF_INCORRETO}                   1234567890a
${CEP}                             77022-424
${NUMERO}                          10
${COMPLEMENTO}                     Apt 101
${DOCUMENTO}                       ${EXECDIR}\\rg.webp
${MSG_SUCESSO}                     Cadastro enviado com sucesso
${MSG_CPF_INCORRETO}               CPF inválido
${MSG_EMAIL_INCORRETO}             Informe um email válido
${MSG_CAMPOS_OBRIGATORIOS}         Todos os campos são obrigatórios

*** Test Cases ***
Cadastro de Dog Walkers
    [Tags]     success
    [Documentation]    Cadastro de Dog Walkers com sucesso
    Open Browser       ${URL}  ${BROWSER}
    Maximize Browser Window

    Input Text  css=input[name="name"]             ${NOME}
    Input Text  css=input[name="email"]            ${EMAIL}
    Input Text  css=input[name="cpf"]              ${CPF_CORRETO}
    Input Text  css=input[name="cep"]              ${CEP}
    Input Text  css=input[name="addressNumber"]    ${NUMERO}
    Input Text  css=input[name="addressDetails"]   ${COMPLEMENTO}
    Choose File    css=input[type="file"]          ${DOCUMENTO}
    Click Element      xpath=//button[contains(text(), "Cadastrar")]
    Sleep     3s
    Element Should Be Visible     xpath=//div[@class="swal2-html-container"]
    Page Should Contain        Recebemos o seu cadastro e em breve retornaremos o contato.
    Capture Page Screenshot              Cadastro_Dog_Walker_Sucess.png
    Close Browser

CPF incorreto
    [Tags]    invalid_cpf
    [Documentation]  Teste com CPF incorreto
    Open Browser       ${URL}  ${BROWSER}
    Maximize Browser Window

    Input Text  css=input[name="cpf"]          ${CPF_INCORRETO}
    Click Element      xpath=//button[contains(text(), "Cadastrar")]
    Element Should Be Visible     xpath=//span[@class="alert-error"]
    Page Should Contain            CPF inválido
    Capture Page Screenshot              Cadastro_Dog_Walker_Invalid_CPF.png

Email incorreto
    [Documentation]  Teste com Email incorreto
    Click Element  input[name="name"]
    Input Text  input[name="name"]         ${NOME}
    Input Text  input[name="email"]        ${EMAIL_INCORRETO}
    Input Text  input[name="cpf"]          ${CPF_CORRETO}
    Input Text  input[name="cep"]          ${CEP}
    Click Element  css:input[type="file"]
    # Preencha os demais campos conforme necessário
    Click Button  Submit
    Wait Until Page Contains  ${MSG_EMAIL_INCORRETO}

Campos obrigatórios
    [Tags]  
    
    Click Element      xpath=//button[contains(text(), "Cadastrar")]Click Button  

*** Keywords ***
