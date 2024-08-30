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
    scrollToElement                      ${LABEL_RPOGRESSBAR}
    Wait Until Element Is Visible        ${BUTTON_START}
    Sleep    time_=10.0
    Click Button                         ${BUTTON_START}
   
  
Validar progresso da progress bar
    ${progress_bar_25}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${PROGRESS_BAR}
        Run Keyword If    ${progress_bar_25}      Click Button    ${BUTTON_STOP}
       
Apertar Start novamente e ao chegar aos 100% resetar
    Wait Until Element Is Visible        ${BUTTON_START}
    Sleep        time_=10.0
    Click Button                         ${BUTTON_START}

    ${progress_bar_full}=    Run Keyword And Return Status    Wait Until Element Is Visible    ${PROGRESS_BAR_FULL} 
        Run Keyword If    ${progress_bar_full}      Click Button    ${BUTTON_RESET}
    #Sleep para validar que a barra foi zerada
    Sleep    10.0


    