*** Settings ***

Documentation       Metodos referentes ao desafio 2 - validar mensagem em uma nova tela

Resource            ../Config/package.robot

*** Keywords ***
#Métodos do desafio para validar mensagem em uma nova tela
#Segundo desafio  

Escolher a opcao Alerts,Frame e Windows na pageg inicial, clicar no submenu Browser Windows
    Wait Until Element Is Visible        ${CARD_ALERT}               timeout=30s
    Click Element                        ${CARD_ALERT}
    Wait Until Element Is Enabled        ${OPTION_BROWSER_WINDOW}    timeout=30s
    Click Element                        ${OPTION_BROWSER_WINDOW}


Certifica-se que uma nova janela foi aberta e valida a mensagem This is a sample page
    Wait Until Element Is Visible        ${BUTTON_NEW_WINDOW}
    ${TELA_PRINCIPAL}=                    Get Window Handles
    Click Button                         ${BUTTON_NEW_WINDOW}    
    
    #Estou colocando um sleep para exibir que a nova tela está sendo exibida com sucesso
    Sleep                        time_=10.0
    ${NOVA_TELA}=                         Get Window Handles
    Switch Window                         ${NOVA_TELA[1]}
    
    ${element_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${VALIDATE_MESSAGE}
    IF  ${element_visible}
        Sleep    10.0
        Log   A mensagem foi validada com sucesso na tela que foi aberta               
    ELSE
        Log    A tela não foi exibida
    END
    
Fechar a nova janela aberta
    Close Window
    #Irei colocar um sleep, apenas para validar que apenas a tela nova que foi aberta está sendo fechada em caso de dúvidas
    Sleep    10.0