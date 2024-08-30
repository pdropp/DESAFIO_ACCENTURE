*** Settings ***
Documentation       Pagina de objetos mapeados do desafio 3


*** Variables ***
#Desafio 3 - Criar, editar e deletar registros

${FIRST_NAME}            Pedro
${LAST_NAME}             Paulo
${EMAIL}                 pdropp@test.com.br
${AGE}                   26
${SALARY}                7500
${DEPARTAMENT}           QA
    
#Escolher a opcao Elements e Web Tables
${CARD_ELEMENTS}                     xpath=//div[@class='category-cards']//div[@class='card-body']//h5[contains(text(),'Elements')]
${WEB_TABLES_OP}                     xpath=//ul[@class='menu-list']//li//span[contains(text(),'Web Tables')]

#Criar um novo registro
${BUTTON_ADD}                        xpath=//button[text()='Add']
${TELA_FORM}                         xpath=//form
${INPUT_FIRST_NAME}                  xpath=//input[@placeholder='First Name']
${INPUT_LAST_NAME}                   xpath=//input[@placeholder='Last Name']
${INPUT_EMAIL}                       xpath=//input[@placeholder='name@example.com']
${AGE_INPUT}                         xpath=//input[@placeholder='Age']
${SALARY_INPUT}                      xpath=//input[@placeholder='Salary']
${INPUT_DEPATARMENT}                 xpath=//input[@placeholder='Department']
${BUTTON_SUBMIT}                     xpath=//button[text()='Submit']

#Editar um novo registro criado
${REGISTRO_CRIADO}                   xpath=//div[@class='ReactTable -striped -highlight']//div[text()='${FIRST_NAME}']
${BUTTON_EDITAR}                     xpath=//div[@class='ReactTable -striped -highlight']//div[contains(text(), 'QA')]/following-sibling::div//span[@title='Edit']
${INPUT_FIRST_NAME_EDIT}             xpath=//input[@placeholder='First Name']
${INPUT_SECOND_NAME_EDIT}            xpath=//input[@placeholder='Last Name']
${REGISTRO_EDITADO}                  xpath=//div[@class='ReactTable -striped -highlight']//div[text()='${LAST_NAME}']

#Deletar um registro já criado
${BUTTON_DELETE_REGISTER}            xpath=//div[@class='ReactTable -striped -highlight']//div[contains(text(), 'QA')]/following-sibling::div//span[@title='Delete']
