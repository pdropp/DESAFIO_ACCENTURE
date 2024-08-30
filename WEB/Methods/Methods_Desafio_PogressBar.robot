*** Settings ***

Documentation       Metodos referentes ao desafio 4 - Validar a porcentagem da progress bar

Resource            ../Config/package.robot

*** Keywords ***
#Métodos do desafio para validar a porcentagem da progress bar
#Quarto desafio 

Escolher a opcao Widgets na página inicial
    Wait Until Element Is Visible        ${CARD_WIDGETS}                       timeout=30s
    Click Element                        ${CARD_WIDGETS}
    Wait Until Element Is Enabled        ${PROGRESS_BAR_OPTIONS}               timeout=30s
    Click Element                        ${PROGRESS_BAR_OPTIONS}

Clicar no botao start
    