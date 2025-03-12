***Settings***

Resource        ../resources/globalKeywords.robot

***Test Cases***

CT-01 - Validar cadastro novo usuario  
    Dado acesso a pagina de cadastro  
    Quando preencho formulario com dados validos
    Então cadastro e realizado com sucesso  

CT-02 - Validar cadastro novo usuario como admin 
    Dado acesso a pagina de cadastro  
    Quando preencho formulario com dados validos como admin 
    Então cadastro como admin e realizado com sucesso     