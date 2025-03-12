*** Settings ***
###PAGES
Resource               ../pages/login/login.robot
Resource               ../pages/cadastro/cadastro.robot


###STEPS
Resource               ../steps/login/login.robot
Resource               ../steps/cadastro/cadastro.robot


###LIBRARIES
Library                FakerLibrary
Library                SeleniumLibrary
Library                usuarios.py 
Library                obter_usuario.py


   
###VARIABLES


###RESOURCES
Resource               globalKeywords.robot