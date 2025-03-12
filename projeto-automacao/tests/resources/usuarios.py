import json
import os
from faker import Faker

fake = Faker()

JSON_FILE = "dados_usuarios.json"

def gerar_usuario():
    """Gera um novo usuário e adiciona ao JSON sem apagar os anteriores."""

    # Criar novo usuário
    usuario = {
        "nome": fake.name(),
        "email": fake.email(),
        "senha": fake.password(length=12)
    }

    # Verificar se o arquivo existe e carregar os dados existentes
    if os.path.exists(JSON_FILE):
        with open(JSON_FILE, "r", encoding="utf-8") as f:
            try:
                usuarios = json.load(f)
                if not isinstance(usuarios, list):
                    usuarios = []  # Garantir que o arquivo tenha uma lista
            except json.JSONDecodeError:
                usuarios = []
    else:
        usuarios = []

    # Adicionar novo usuário à lista
    usuarios.append(usuario)

    # Salvar no JSON
    with open(JSON_FILE, "w", encoding="utf-8") as f:
        json.dump(usuarios, f, indent=4)

    return usuario
