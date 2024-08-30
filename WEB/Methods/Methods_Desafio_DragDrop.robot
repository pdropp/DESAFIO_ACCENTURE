*** Settings ***

Documentation       Metodos referentes ao desafio 5 - Realizar drag drops nos itens

Resource            ../Config/package.robot

*** Keywords ***
#Métodos do desafio para Realizar drag drops nos itens
#Segundo desafio  
Escolher a opção Interactions na página inicial 
    Wait Until Element Is Visible        ${CARD_INTERACTIONS}               timeout=30s
    Click Element                        ${CARD_INTERACTIONS}
Clicar no submenu Sortable
    Wait Until Element Is Enabled        ${SORTABLE_OP}               timeout=30s
    Click Element                        ${SORTABLE_OP}

Utilizando métodos de drag and drop, colocar os elementos na ordem crescente

    ${items}=    Get WebElements       ${ITENS_LIST}
    FOR    ${index}    IN RANGE    ${items.__len__}
        Drag And Drop    ${items}[${index}]    ${items}[${index}+1]
    END