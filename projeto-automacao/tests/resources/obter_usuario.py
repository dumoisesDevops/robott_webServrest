import json
import os

JSON_FILE = "dados_usuarios.json"

def obter_dados_login():
    """Lê o arquivo JSON e retorna o primeiro usuário como dados de login."""
    
    if os.path.exists(JSON_FILE):
        with open(JSON_FILE, "r", encoding="utf-8") as f:
            try:
                usuarios = json.load(f)
                if usuarios:
                    # Retorna o primeiro usuário (pode ser alterado para retornar qualquer um)
                    return usuarios[0]["email"], usuarios[0]["senha"]
            except json.JSONDecodeError:
                return None, None
    return None, None
