import requests
import json

# URL base para a API
base_url = "https://demoqa.com"
headers = {
    "Content-Type": "application/json"
}

# Função para criar um usuário
def create_user(username, password):
    url = f"{base_url}/Account/v1/User"
    payload = {
        "userName": username,
        "password": password
    }
    response = requests.post(url, data=json.dumps(payload), headers=headers)
    return response.json()

# Função para gerar um token de acesso
def generate_token(username, password):
    url = f"{base_url}/Account/v1/GenerateToken"
    payload = {
        "userName": username,
        "password": password
    }
    response = requests.post(url, data=json.dumps(payload), headers=headers)
    return response.json()

# Função para verificar a autorização do usuário
def check_authorization(username, password):
    url = f"{base_url}/Account/v1/Authorized"
    payload = {
        "userName": username,
        "password": password
    }
    response = requests.post(url, data=json.dumps(payload), headers=headers)
    return response.json()

# Função para listar os livros disponíveis
def list_books():
    url = f"{base_url}/BookStore/v1/Books"
    response = requests.get(url, headers=headers)
    return response.json()

# Função para adicionar livros ao usuário
def add_books_to_user(user_id, isbn_list, token):
    url = f"{base_url}/BookStore/v1/Books"
    payload = {
        "userId": user_id,
        "collectionOfIsbns": [{"isbn": isbn} for isbn in isbn_list]
    }
    auth_headers = {
        "Authorization": f"Bearer {token}",
        "Content-Type": "application/json"
    }
    response = requests.post(url, data=json.dumps(payload), headers=auth_headers)
    return response.json()

# Função para obter detalhes do usuário
def get_user_details(user_id, token):
    url = f"{base_url}/Account/v1/User/{user_id}"
    auth_headers = {
        "Authorization": f"Bearer {token}",
        "Content-Type": "application/json"
    }
    response = requests.get(url, headers=auth_headers)
    return response.json()

# Fluxo principal
if __name__ == "__main__":
    # Definir nome de usuário e senha
    username = "testuser"
    password = "Test@1234"
    
    # Criar usuário
    user_response = create_user(username, password)
    print("User Creation Response:", user_response)
    user_id = user_response.get('userID')

    # Gerar token
    token_response = generate_token(username, password)
    print("Token Generation Response:", token_response)
    token = token_response.get('token')

    # Verificar autorização
    authorization_response = check_authorization(username, password)
    print("Authorization Check Response:", authorization_response)

    # Listar livros disponíveis
    books_response = list_books()
    print("Books List Response:", books_response)
    
    # Selecionar dois livros da lista de livros disponíveis
    book_isbn_1 = books_response['books'][0]['isbn']
    book_isbn_2 = books_response['books'][1]['isbn']
    
    # Adicionar livros ao usuário
    add_books_response = add_books_to_user(user_id, [book_isbn_1, book_isbn_2], token)
    print("Add Books Response:", add_books_response)

    # Obter detalhes do usuário com livros escolhidos
    user_details = get_user_details(user_id, token)
    print("User Details Response:", user_details)
