*** Settings ***

Documentation    Arquivo de mapeamento do projeto

##Libraries utilizadas no projeto Web
Library        SeleniumLibrary
Library        FakerLibrary        locale=pt_BR
Library        String      
Library        XML
Library        Process
Library        DateTime
Library        ScreenCapLibrary
Library        OperatingSystem
Library        ../Logs/Method_Upload_File.py
#Hooks
Resource    config.robot    # robotcode: ignore

#Métodos cenários
Resource    ../Methods/Methods_Desafio_NovaTela.robot
Resource    ../Methods/Methods_Desafio_PreencherForm.robot

#Pages
Resource    ../Pages/Page_Object_desafio1.robot
Resource    ../Pages/Page_Object_desafio2.robot

#Data
Variables    ../Data/data_credentials.yaml

#Utils

Resource    ../utils/utils.robot