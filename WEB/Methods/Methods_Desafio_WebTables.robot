*** Settings ***

Documentation       Metodos referentes ao desafio 3 - Criar um novo registro, editar e deletar

Resource            ../Config/package.robot

*** Keywords ***
#Métodos do desafio para validar a criação, ediação e exclusão de dados
#Segundo desafio  

Escolher a op Elements na PG incial, Clicar no submenu Web Tables
    Wait Until Element Is Visible        ${CARD_ELEMENTS}               timeout=30s
    Click Element                        ${CARD_ELEMENTS}
    Wait Until Element Is Enabled        ${WEB_TABLES_OP}               timeout=30s
    Click Element                        ${WEB_TABLES_OP}

Crirar um novo Registro
    Wait Until Element Is Enabled        ${BUTTON_ADD}
    Click Button                         ${BUTTON_ADD}
    Wait Until Element Is Visible        ${TELA_FORM}   
    Input Text                           ${INPUT_FIRST_NAME}             ${FIRST_NAME}
    Input Text                           ${INPUT_LAST_NAME}              ${LAST_NAME}
    Input Text                           ${INPUT_EMAIL}                  ${EMAIL}
    Input Text                           ${AGE_INPUT}                    ${AGE}
    Input Text                           ${SALARY_INPUT}                 ${SALARY}
    Input Text                           ${INPUT_DEPATARMENT}            ${DEPARTAMENT}
    Click Button                         ${BUTTON_SUBMIT}

Editar o novo registro criado
    Wait Until Element Is Visible        ${REGISTRO_CRIADO}
    Click Element                        ${BUTTON_EDITAR}
    Wait Until Element Is Visible        ${TELA_FORM}
    Input Text                           ${INPUT_FIRST_NAME_EDIT}        ${LAST_NAME}
    Input Text                           ${INPUT_SECOND_NAME_EDIT}        ${FIRST_NAME}
    Click Button                         ${BUTTON_SUBMIT}



Deletar o novo registro criado
    Wait Until Element Is Visible        ${REGISTRO_EDITADO}
    Click Element                        ${BUTTON_DELETE_REGISTER}

    ${element_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${REGISTRO_EDITADO}
    IF  ${element_visible}==False
        Log    O registro criado foi deletado com sucesso!
                        
    ELSE
        Log   O registro não foi deletado
    END



#Bonus desafio
#Métodos do desafio bonus
Criar 12 Registros Dinamicamente
   [Documentation]    Este keyword cria 12 registros de forma dinâmica
   
   FOR    ${i}    IN RANGE    1    13
        Criar Novo Registro Bonus     FIRST_NAME_FIELD=Pedro${i}    LAST_NAME_FIELD=Paulo${i}    EMAIL_FIELD=pedro@teste.com.br   AGE_FIELD=26   SALARY_FIELD=7500    DEPARTAMENT_FIELD=QA
    END
    

Criar Novo Registro Bonus
    [Arguments]    ${FIRST_NAME_FIELD}    ${LAST_NAME_FIELD}    ${EMAIL_FIELD}    ${AGE_FIELD}    ${SALARY_FIELD}    ${DEPARTAMENT_FIELD}
    
    Wait Until Element Is Enabled        ${BUTTON_ADD}
    Click Button                         ${BUTTON_ADD}
    Wait Until Element Is Visible        ${TELA_FORM}
    Input Text                           ${INPUT_FIRST_NAME}             ${FIRST_NAME_FIELD}
    Input Text                           ${INPUT_LAST_NAME}              ${LAST_NAME_FIELD}
    Input Text                           ${INPUT_EMAIL}                  ${EMAIL_FIELD}
    Input Text                           ${AGE_INPUT}                    ${AGE_FIELD}
    Input Text                           ${SALARY_INPUT}                 ${SALARY_FIELD}
    Input Text                           ${INPUT_DEPATARMENT}            ${DEPARTAMENT_FIELD}
    Click Button                         ${BUTTON_SUBMIT}

Deletar Todos os Registros Criados
    [Documentation]    Este método é feito para deletar todos os registros criados
    FOR    ${i}    IN RANGE    1    13
        Click Element    ${BUTTON_DELETE_REGISTER}
    END