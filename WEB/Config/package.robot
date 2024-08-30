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
Resource    config.robot

#Métodos cenários
Resource    ../Functions/Functions_Desafio_PreencherForm.robot

#Pages
Resource    ../Pages/Page_Object.robot

#Data
Variables    ../Data/data_credentials.yaml

#Utils

Resource    ../utils/utils.robot