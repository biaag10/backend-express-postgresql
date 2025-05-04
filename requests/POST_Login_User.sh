# source ./requests/POST_Login_User.sh

# login bem-sucedido (com username)
curl --request POST \
  --url 'http://localhost:3000/users/login' \
  --header 'Content-Type: application/json' \
  --data '{
    "username": "biancaandrade",
    "password": "Bianca@123"
    }'

# login bem-sucedido (com email)
# curl --request POST \
#   --url 'http://localhost:3000/users/login' \
#   --header 'Content-Type: application/json' \
#   --data '{
#     "email": "Bianca@example.com",
#     "password": "Bianca@123"
#     }'

# senha invalida {"message":"Senha incorreta"}
# curl --request POST \
#   --url 'http://localhost:3000/users/login' \
#   --header 'Content-Type: application/json' \
#   --data '{
#     "username": "biancaandrade",
#     "password": "Bianca@432"
#     }'

# email invalido {"message":"E-mail ou nome de usuário inválido"}
# curl --request POST \
#   --url 'http://localhost:3000/users/login' \
#   --header 'Content-Type: application/json' \
#   --data '{
#     "email": "newuser0@example.com",
#     "password": "Bianca@123"
#     }'

# requisição mal formatada {"message":"Nome de usuário e senha são obrigatórios. Ou Email e senha são obrigatórios!"}
# curl --request POST \
#   --url 'http://localhost:3000/users/login' \
#   --header 'Content-Type: application/json' \
#   --data '{
#     "password": "Bianca@123"
#     }'

