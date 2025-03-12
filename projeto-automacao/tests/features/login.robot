***Settings***

Resource        ../resources/globalKeywords.robot

***Test Cases***

CT-01 - Validar login com usuario valido 
    [Tags]    smoke    auth
    Dado que estou na página inicial   
    Quando informo os dados de acesso  
    Então usuario e logado com sucesso