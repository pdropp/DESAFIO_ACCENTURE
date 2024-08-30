*** Settings ***

Documentation       Metodos referentes ao desafio 1 de preencher formulario

Resource            ../Config/package.robot

*** Keywords ***
#Métodos do desafio front-end formulário 
#Primeiro desafio

#Given
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
    Input Text                           ${MOBILE_INPUT}            text=8199999999
    Click Element                        ${SUBJECTS_INPUT}
    scrollToElement                      ${SUBJECTS_INPUT}
    Input Text                           ${SUBJECTS_INPUT}          text=Maths
    Click Element                        ${SUBJECTS_INPUT}
    Wait Until Element Is Enabled        ${SUBJECTS_OPTN}
    Click Element                        ${SUBJECTS_OPTN}
    scrollToElement                      ${HBBIES_OPTION}
    Click Element                        ${HBBIES_OPTION}
    Click Element                        ${OPTION_CHOOSE_FILE}
    Upload File                          ${PATH_ARCHIVE}           ${FILE_NAME}
    Input Text                           ${ADDRESS_INPUT}          text=Rua da regeneracao, 451
    Click Element                        ${SELECT_STATE}
    Wait Until Element Is Enabled        ${SELECT_STATE_OPTN}
    Click Element                        ${SELECT_STATE_OPTN}   
    Wait Until Element Is Enabled        ${SELECT_CITY}
    Click Element                        ${SELECT_CITY}
    Wait Until Element Is Enabled        ${SELECT_CITY_OPTN}
    Click Element                        ${SELECT_CITY_OPTN}
    Click Button                         ${BUTTON_SUBMIT}

Garantir que um poup foi aberto apos submit
    ${element_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${POP_UP}
    IF  ${element_visible}
        Log    O formulário foi preenchido corretamente e o pop up exibido com sucesso!
        Click Button    ${BUTTON_CLOSE_POP_UP}                 
    ELSE
        Log    O formulário não foi preenchido corretamente
    END
    
     

    





    