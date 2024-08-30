*** Settings ***
Documentation       Pagina de objetos mapeados da frente Lista de verificação


*** Variables ***
#Desafio 1 - preencher formulário e confirmar pop up
${CARD_FORM}                        xpath=//div[@class='category-cards']//div[@class='card-body']//h5[contains(text(),'Forms')]
${OPTION_PRACTICE_FORM}             xpath=//ul[@class='menu-list']//li//span[contains(text(),'Practice Form')]

#Variaveis PATH do arquivo e nome do arquivo que será upado no chat
${PATH_ARCHIVE}    C:\\Users\\Pedro\\Desktop\\Desafio\\DESAFIO_ACCENTURE\\WEB\\Logs
${FILE_NAME}        file.txt  

#Objetos para preencher formulário
${FIRST_NAME_INPUT}                 xpath=//input[@placeholder='First Name']
${LAST_NAME_INPUT}                  xpath=//input[@placeholder='Last Name']
${EMAIL_INPUT}                      xpath=//input[@placeholder='name@example.com']
${GENDER_OPTION}                    xpath=//div[@id='genterWrapper']//label[text()='Male']
${MOBILE_INPUT}                     xpath=//input[@placeholder='Mobile Number']
${DATE_BIRTH_INPUT}                 xpath=//div[@class='react-datepicker__input-container']//input
${SUBJECTS_INPUT}                   xpath=//div[@class='subjects-auto-complete__input']//input
${SUBJECTS_OPTN}                    xpath=//div[@class='subjects-auto-complete__menu-list subjects-auto-complete__menu-list--is-multi css-11unzgr']//div[text()='Maths']
${HBBIES_OPTION}                    xpath=//div[@id='hobbiesWrapper']//label[text()='Sports']
${OPTION_CHOOSE_FILE}               xpath=//div[@class='form-file']//label
${ADDRESS_INPUT}                    xpath=//textArea[@placeholder='Current Address']
${SELECT_STATE}                     xpath=//div[text()='Select State']
${SELECT_STATE_OPTN}                xpath=//div[@class=' css-11unzgr']//div[text()='NCR']
${SELECT_CITY}                      xpath=//div[text()='Select City']
${SELECT_CITY_OPTN}                 xpath=//div[@class=' css-11unzgr']//div[text()='Delhi']
${BUTTON_SUBMIT}                    xpath=//button[text()='Submit']

#Objetos para fazer validação do pop up apos o submit
${POP_UP}                           xpath=//div[@class='modal-content']
${BUTTON_CLOSE_POP_UP}              xpath=//button[text()='Close']
