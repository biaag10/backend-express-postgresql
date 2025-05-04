# source ./requests/POST_Register_User.sh

# registro bem-sucedido 
# curl --request POST \
#   --url 'http://localhost:3000/users/register' \
#   --header 'Content-Type: application/json' \
#   --data '{
#     "name": "Rafael Ath",
#     "username": "rafaelath",
#     "email": "rafaelath@example.com",
#     "password": "Rafa@123"
#   }'

# e-mail repetido
# curl --request POST \
#   --url 'http://localhost:3000/users/register' \
#   --header 'Content-Type: application/json' \
#   --data '{
#     "name": "Rafael Ath 2",
#     "username": "rafaelath2",
#     "email": "rafaelath@example.com",
#     "password": "Rafa@123"
#   }'

# requisição mal formatada {"message":"Nome, Nome de usuário, Email e senha são obrigatórios!"}
# curl --request POST \
#   --url 'http://localhost:3000/users/register' \
#   --header 'Content-Type: application/json' \
#   --data '{
#     "name": "Teste usuario",
#     "email": "emailinvalido",
#     "password": "Senha@123"
#   }'

# senha inválida {"message":"A senha deve ter no mínimo 8 caracteres, uma letra maiúscula, um número e um caractere especial"}
curl --request POST \
  --url 'http://localhost:3000/users/register' \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "Rafael Ath 4",
    "username": "rafaelath4",
    "email": "rafaelath4@example.com",
    "password": "senhainvalida"
  }'
