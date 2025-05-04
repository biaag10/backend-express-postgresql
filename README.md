# backend-express-postgresql
# Atividade Avaliativa IV.v2.0.0: Backend em Express com Autenticação (JWT) e PostgreSQL em produção

# Link do Vídeo Demonstrativo
https://drive.google.com/file/d/1kuqvxrPBQN1Twh4lvRDHwCFksTI09gPU/view?usp=sharing


# PostgreSQL 
https://renatogroffe.medium.com/postgresql-docker-compose-criando-rapidamente-ambientes-e-populando-bases-para-testes-6c4b9a4de313

# teste com vercel
curl -i -L --request POST \
  --url backend-express-postgresql-seven.vercel.app/users/register \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "User Vercel",
    "username": "username-vercel",
    "email": "usernamevercel@gmail.com",
    "password": "Password@123"
  }'

curl -i -L --request POST \
  --url https://backend-express-postgresql-seven.vercel.app/users/register \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "Bianca Andrade",
    "username": "bianca-andrade",
    "email": "bianca@gmail.com",
    "password": "Bianca@123"
  }'

curl -i -L --request LOGIN \
  --url https://backend-express-postgresql-seven.vercel.app/users/login \
  --header 'Content-Type: application/json' \
  --data '{
    "username": "bianca-andrade",
    "password": "Bianca@123"
  }'

curl --request GET \
  --url 'https://backend-express-postgresql-seven.vercel.app/secure/protected' \
  --header 'Authorization: Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsImlhdCI6MTc0NjM3MjAzMywiZXhwIjoxNzQ2Mzc1NjMzfQ.-9VPJ3xIcdFv7Km5u55Yi0u6HAJfBFJ4i58H7oc1keU' 



# JSON Web Tokens
https://www.npmjs.com/package/jsonwebtoken
- add no package.json "generate-secret-key": "node -e \"console.log(require('crypto').randomBytes(64).toString('hex'))\"" e rodar "npm run generate-secret-key"

# Request
- exemplo de comando: "source ./requests/POST_Register_User.sh"

# Observação

- Localmente: Ao rodar sua aplicação localmente, o banco de dados será acessado sem SSL, o que vai evitar o erro de "connection is insecure".

- No Vercel: Quando o código for rodado no Vercel, o SSL será ativado, conforme esperado.
(Obs.: É necessário dar um "set NODE_ENV=development" no terminal antes de testar com o vercel)