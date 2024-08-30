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
    scrollToElement                      ${PROGRESS_BAR_OPTIONS}
    Click Element                        ${PROGRESS_BAR_OPTIONS}

Clicar no botao start
    Wait Until Element Is Visible        ${BUTTON_START}
    Click Button                         ${BUTTON_START}

Validar progresso da progress bar
    Wait Until Element Is Visible        ${PROGRESS_BAR}    
    Click Button    ${BUTTON_STOP}
    Sleep    10.0

Apertar Start novamente e ao chegar aos 100% resetar
    Wait Until Element Is Visible        ${BUTTON_START}
    Click Button                         ${BUTTON_START}
    Wait Until Element Is Visible        ${PROGRESS_BAR_FULL}    timeout=30s
    Wait Until Element Is Visible        ${BUTTON_RESET}
    Click Button                         ${BUTTON_RESET}
    #Sleep para validar que a barra foi zerada
    Sleep    10.0


    