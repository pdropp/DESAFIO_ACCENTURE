*** Settings ***
Documentation       Keywords (métodos) referentes aos cenários de testes da frente Lista de verificação

Resource            ../Config/package.robot
Library             OperatingSystem


*** Variables ***
${PATH_ARCHIVE}    C:\Users\Pedro\Desktop\Desafio\DESAFIO_ACCENTURE\WEB\file.txt                        

*** Keywords ***
#Métodos do desafio front-end formulário
Escolher a opcao FORMS na pagina inicial, clicar no Submenu Pratice Form
    Wait Until Element Is Visible        ${CARD_FORM}               timeout=30s
    Click Element                        ${CARD_FORM}
    Wait Until Element Is Enabled        ${OPTION_PRACTICE_FORM}    timeout=30s
    Click Element                        ${OPTION_PRACTICE_FORM}

Preencher todo formulario com valores aleatorios
    Wait Until Element Is Visible        ${FIRST_NAME_INPUT}        timeout=30s
    Input Text                           ${FIRST_NAME_INPUT}        text=Pedro
    Input Text                           ${LAST_NAME_INPUT}         text=Paulo
    Input Text                           ${EMAIL_INPUT}             text=pdropp@teste.com.br
    Click Element                        ${GENDER_OPTION}
    Input Text                           ${MOBILE_INPUT}            text=99999-9999
    Input Text                           ${SUBJECTS_INPUT}          text=Desafio Accenture
    Click Element                        ${HBBIES_OPTION}
    Click Element                        ${OPTION_CHOOSE_FILE}   

    Input Text                           ${ADDRESS_INPUT}           text=Rua da regeneracao, 451
    Select From List By Label            ${SELECT_STATE}            label=NCR
    Sleep                                time_=2.0
    Select From List By Label            ${SELECT_CITY}             label=NOIDA
    
    




    