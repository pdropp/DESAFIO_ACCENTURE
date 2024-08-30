*** Settings ***

Documentation       Metodos referentes ao desafio 2 - validar mensagem em uma nova tela

Resource            ../Config/package.robot

*** Keywords ***
#Métodos do desafio para validar mensagem em uma nova tela
#Primeiro desafio

Escolher a opcao Alerts,Frame e Windows na pageg inicial, clicar no submenu Browser Windows
    Wait Until Element Is Visible        ${CARD_FORM}               timeout=30s
    Click Element                        ${CARD_FORM}
    Wait Until Element Is Enabled        ${OPTION_PRACTICE_FORM}    timeout=30s
    Click Element                        ${OPTION_PRACTICE_FORM}

    
