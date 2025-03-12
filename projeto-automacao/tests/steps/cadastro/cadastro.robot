*** Settings ***
Resource          ../../resources/base.robot

*** Keywords ***
###DADO
Dado acesso a pagina de cadastro 
    Dado que estou na página inicial   
    Clicar no botão    ${ENTRAR_CADASTRE_SE}

###QUANDO
Quando preencho formulario com dados validos  
...  ${usuario}    Gerar Usuario

     Inserir texto             ${INPUT_NOME}      ${usuario}[nome]
     Inserir texto             ${INPUT_EMAIL}     ${usuario}[email]
     Inserir texto             ${INPUT_PASSWORD}  ${usuario}[senha]
     Clicar no botão           ${BOTAO_CADASTRAR}
Quando preencho formulario com dados validos como admin 
    Clicar no botão   ${CHECKBOX_ADMINISTRADOR}     
    Quando preencho formulario com dados validos  

##ENTAO

Então cadastro e realizado com sucesso 
    Wait Until Location Is    https://front.serverest.dev/home    timeout=10s
    ${url_atual} =    Get Location
    Should Be Equal    ${url_atual}    https://front.serverest.dev/home
Então cadastro como admin e realizado com sucesso 
    Wait Until Location Is    https://front.serverest.dev/admin/home   timeout=10s
    ${url_atual} =    Get Location
    Should Be Equal    ${url_atual}    https://front.serverest.dev/admin/home