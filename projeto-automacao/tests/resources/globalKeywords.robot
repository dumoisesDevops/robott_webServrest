*** Settings ***

Resource          ./base.robot

*** Variables ***
${BROWSER}        Chrome
${HEADLESS_MODE}  ${EMPTY}
${TIMEOUT}        3000s
${OUTPUT_DIR}     evidencias/videos
${URL}            https://front.serverest.dev/login

*** Keywords ***
### DADO
Dado que estou na página inicial
    TRY
         Open Browser    ${URL}    ${BROWSER}  
    EXCEPT
        Log To Console   elemento não localizado
    END

### QUANDO

### E

### ENTÃO

### GERAIS

Clicar no botão
    [Arguments]    ${ELEMENTO}
    Wait Until Element Is Visible    ${ELEMENTO}    ${TIMEOUT}
    Click Element    ${ELEMENTO}

Inserir texto
    [Arguments]    ${ELEMENTO}    ${TEXTO}
    Wait Until Element Is Visible    ${ELEMENTO}    ${TIMEOUT}
    Input Text    ${ELEMENTO}    ${TEXTO}

Verificar se o texto está visível
    [Arguments]    ${TEXTO}
    Wait Until Element Contains    ${ELEMENTO}    ${TEXTO}    ${TIMEOUT}

Verificar se o texto não está visível
    [Arguments]    ${TEXTO}
    Wait Until Element Does Not Contain    ${ELEMENTO}    ${TEXTO}    ${TIMEOUT}

Verificar se o elemento está visível
    [Arguments]    ${ELEMENTO}    ${TIMEOUT}=190s
    Wait Until Element Is Visible    ${ELEMENTO}    ${TIMEOUT}

Verificar se o elemento está desabilitado
    [Arguments]    ${ELEMENTO}
    Wait Until Element Is Disabled    ${ELEMENTO}    ${TIMEOUT}

Verificar se o elemento não está visível
    [Arguments]    ${ELEMENTO}
    Wait Until Element Does Not Exist    ${ELEMENTO}    ${TIMEOUT}

Limpar campo de texto
    [Arguments]    ${ELEMENTO}
    Wait Until Element Is Visible    ${ELEMENTO}    ${TIMEOUT}
    Clear Element Text    ${ELEMENTO}


Clicar se o botão está visível
    [Arguments]              ${ELEMENTO}
    ${BOTAO_VISIVEL}         Run Keyword And Return Status    Wait Until Element Is Visible    ${ELEMENTO}    timeout=10
    Run Keyword If           ${BOTAO_VISIVEL}                 Clicar no botão            ${ELEMENTO}
