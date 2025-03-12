*** Settings ***
Resource          ../../resources/base.robot

*** Keywords ***
###DADO
Dado que desejo logar no sistema
    Dado que estou na página inicial   

###QUANDO
Quando informo os dados de acesso
...  ${usuario}    ${senha}    Obter Dados Login
     Inserir texto             ${INPUT_LOGIN}        ${usuario}
     Inserir texto             ${INPUT_PASSWORD}     ${senha}
     Clicar no botão           ${BOTAO_ENTRAR_LOGIN}      

###ENTAO
Então usuario e logado com sucesso
  Wait Until Location Is    https://front.serverest.dev/home    timeout=10s
    ${url_atual} =    Get Location
    Should Be Equal    ${url_atual}    https://front.serverest.dev/home
