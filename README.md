# 🤖 Robot Framework Tests with Selenium and Chrome (Windows)

Este repositório automatiza testes utilizando o **Robot Framework**, o **Selenium Library** e o **Google Chrome** no ambiente Windows. A pipeline foi configurada para ser executada no **GitHub Actions** e garante que os testes sejam rodados automaticamente sempre que houver **push** ou **pull request** na branch `main`.

## 📝 Pré-requisitos

Antes de rodar os testes, você precisa garantir que os seguintes requisitos estão instalados:

- **🐍 Python 3.x**: O setup foi configurado para rodar com a versão `3.10` do Python. [Baixe o Python aqui](https://www.python.org/downloads/).
- **🌐 Google Chrome**: O navegador Google Chrome já está pré-instalado na máquina onde os testes serão executados. [Baixe a versão mais recente aqui](https://www.google.com/chrome/).
- **🔧 ChromeDriver**: O ChromeDriver também já está disponível e é compatível com a versão do Google Chrome. [Baixe o ChromeDriver aqui](https://sites.google.com/a/chromium.org/chromedriver/).
- **🧰 Selenium**: Utilizado para automatizar a interação com o navegador Chrome.

## 🛠️ Estrutura da Pipeline

A pipeline do GitHub Actions é composta pelas seguintes etapas:

1. **⬇️ Checkout do repositório**: O repositório é baixado para a máquina de execução.
2. **🐍 Configuração do Python 3.x**: A versão `3.10` do Python é configurada.
3. **📦 Instalação das dependências**:
   - O `pip` é atualizado.
   - As dependências necessárias para o Robot Framework são instaladas:
     - `robotframework`
     - `robotframework-seleniumlibrary`
     - `faker`
     - `robotframework-faker`
4. **🔍 Verificação do Selenium**: O comando `pip show selenium` é utilizado para garantir que o Selenium está instalado corretamente.
5. **🔧 Verificação da versão do Google Chrome**: A versão do Google Chrome é verificada para garantir que o navegador está instalado corretamente.
6. **🖥️ Verificação da versão do ChromeDriver**: A versão do ChromeDriver é verificada.
7. **📂 Listagem de arquivos**: A estrutura do repositório é listada para verificar a existência do diretório `tests/features`.
8. **🚀 Execução dos testes**: Os testes são executados utilizando o Robot Framework com as variáveis configuradas para o navegador Chrome no modo headless.
9. **📤 Envio dos resultados**: Os resultados dos testes são enviados como artefatos para o GitHub Actions, permitindo o download e análise dos logs.

## 🛠️ Como Configurar o Ambiente Localmente

Caso deseje rodar os testes localmente, siga as instruções abaixo:

### 1. **Instalar o Python 3.x**

Baixe e instale o Python [aqui](https://www.python.org/downloads/).

### 2. **Instalar as dependências**

Execute o seguinte comando para instalar as dependências do projeto:

```bash
pip install -r requirements.txt

O arquivo requirements.txt contém as seguintes dependências:

robotframework
robotframework-seleniumlibrary
faker
robotframework-faker

 Instalar o Google Chrome
O Google Chrome precisa estar instalado em sua máquina. Baixe a versão mais recente aqui.

4. Instalar o ChromeDriver
Baixe a versão compatível com sua versão do Google Chrome a partir deste link.

5. Rodar os testes
Com tudo configurado, você pode rodar os testes localmente utilizando o seguinte comando:

robot --variable BROWSER:Chrome --variable HEADLESS_MODE:"--headless --no-sandbox --disable-dev-shm-usage" -d results projeto-automacao/tests/features/
Os resultados dos testes serão salvos no diretório results.

📋 Cenários de Teste
Os cenários de teste são definidos dentro da pasta projeto-automacao/tests/features/ e são estruturados utilizando a sintaxe do Robot Framework. 

Os principais cenários incluem:

Cadastro de novo usuário
Login de usuário válido

Esses cenários são testados com o uso do Selenium para interagir com o navegador Chrome, simulando ações como preencher formulários e realizar login.

⚙️ Frameworks Utilizados

🤖 Robot Framework: Framework de automação baseado em palavras-chave, utilizado para escrever os testes de forma legível e estruturada.
🌐 SeleniumLibrary: Biblioteca do Robot Framework para controlar navegadores (Chrome, neste caso).
🔮 Faker: Usado para gerar dados falsos, como nomes e endereços, durante os testes.
📊 Visualizando os Resultados
Os resultados dos testes são armazenados na pasta results e podem ser visualizados de duas formas:

📝 Logs em formato HTML: O arquivo log.html contém um resumo dos testes executados, incluindo informações detalhadas sobre os passos de cada teste.
📊 Relatório: O arquivo report.html contém um resumo geral dos testes, mostrando quais passaram e quais falharam.
Ambos os arquivos são gerados automaticamente após a execução dos testes. Se você estiver usando o GitHub Actions, os resultados também serão enviados como artefatos, permitindo o download direto pelo painel de Actions.
