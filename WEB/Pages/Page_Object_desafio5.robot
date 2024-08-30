*** Settings ***
Documentation       Pagina de objetos mapeados do desafio 5


*** Variables ***
#Desafio 5 - realizar drag and drops dos itens
${CARD_INTERACTIONS}                             xpath=//div[@class='category-cards']//div[@class='card-body']//h5[contains(text(),'Interactions')]
${SORTABLE_OP}                                   xpath=//ul[@class='menu-list']//li//span[contains(text(),'Sortable')]

#Itens para fazer o drag drop
${ITENS_LIST}                                    xpath=//div[@id='demo-tabpane-list']//div[@class='list-group-item list-group-item-action']