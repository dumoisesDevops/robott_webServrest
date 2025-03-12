 
 tack para Automação Web com Robot Framework e Playwright
Linguagem: Python (versão mais recente recomendada)
Framework de Automação: Robot Framework
Engine de Navegação: Playwright
Gerenciamento de Dependências: Pipenv ou virtualenv + pip
Gerenciamento de Testes: Robot Framework + pytest (para execução personalizada)
Relatórios e Logs: Allure Report + Robot Framework Reports
Gerenciamento de Configurações: .env + YAML
CI/CD: GitHub Actions, GitLab CI ou Jenkins para execução automatizada
Controle de Versão: Git + GitHub/GitLab
Execução Paralela: Pabot para execução simultânea de testes
Gerenciamento de Dados: Faker para geração de dados dinâmicos
 
 Abrir o terminal (CMD ou PowerShell) e rodar:

mkdir projeto-automacao
cd projeto-automacao

mkdir tests
mkdir tests\suites
mkdir tests\resources
mkdir tests\results

type nul > tests\suites\login.robot
type nul > tests\suites\cadastro.robot
type nul > tests\resources\keywords.robot
type nul > tests\resources\locators.yaml
type nul > tests\resources\variables.yaml

type nul > .env
type nul > pyproject.toml
type nul > requirements.txt
type nul > README.md


robot -d results tests/suites/

pip install robotframework-browser
rfbrowser init
venv\Scripts\Activate

