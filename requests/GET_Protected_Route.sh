# source ./requests/GET_Protected_Route.sh

# acesso a /protected com token válido {"message":"Acesso autorizado"}
curl --request GET \
  --url 'http://localhost:3000/secure/protected' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTc0NjM2NTkzMCwiZXhwIjoxNzQ2MzY5NTMwfQ.-zWtZuuzXbj4qHwePjcOdja-wcAz2Z2RGbliDhfIFVc' 

# tentativa de acesso a /protected sem token {"message":"Token não fornecido"}
# curl --request GET \
#   --url 'http://localhost:3000/secure/protected'

# tentativa de acesso a /protected com token inválido {"message":"Token inválido"}
# curl --request GET \
#   --url 'http://localhost:3000/secure/protected' \
#   --header 'Authorization: Bearer <token_inválido>'


