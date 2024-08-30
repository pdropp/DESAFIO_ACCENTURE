*** Settings ***

Documentation       Metodos referentes ao desafio 3 - Criar um novo registro, editar e deletar

Resource            ../Config/package.robot

*** Keywords ***
#Métodos do desafio para validar a criação, ediação e exclusão de dados
#Segundo desafio  

Criar um novo registro
    Wait Until Element Is Visible        ${CARD_ELEMENTS}               timeout=30s
    Click Element                        ${CARD_ELEMENTS}
    Wait Until Element Is Enabled        ${WEB_TABLES_OP}    timeout=30s
    Click Element                        ${WEB_TABLES_OP}