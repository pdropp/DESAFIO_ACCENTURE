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
    Sleep    time_=10.0
    scrollToElement                      ${LABEL_SORTABLE}
    Sleep    time_=10.0

Utilizando métodos de drag and drop, colocar os elementos na ordem crescente
    ${ITENS}=    Get WebElements    ${ITENS_LIST}
    # Ordenar os elementos usando Insertion Sort
    FOR    ${i}    IN RANGE    1    ${ITENS.__len__()}
        ${elemento_atual}=    Get From List    ${ITENS}    ${i}
        ${j}=    Evaluate    ${i} - 1
        WHILE  ${j} >= 0
            ${elemento_j_text}=    Get Text    ${ITENS}[${j}]
            Drag And Drop    ${elemento_atual}    ${ITENS}[${j}]
            ${j}=    Evaluate    ${j} - 2
        END
            
    END