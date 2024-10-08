*** Settings ***

Documentation        Arquivo de configuração do browser

Resource   package.robot

*** Keywords ***

Open Session
    Open Browser    about:blank   ${BROWSER.NAME}   options=add_experimental_option("excludeSwitches", ["enable-logging"]); add_argument("--window-size=1920,1080"); add_experimental_option("detach", True) 
    Maximize Browser Window
    Set Selenium Timeout    10s
    Go To    ${BROWSER.URL}

  #  Start Video Recording    alias=none    name=Evidencia_cenario_   fps=30    size_percentage=1    embed=True    embed_width=1920x1080    monitor=1
   
    