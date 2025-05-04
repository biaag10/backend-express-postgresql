# backend-express-postgresql
# Atividade Avaliativa IV.v2: Backend em Express com Autenticação (JWT) e PostgreSQL em produção

# PostgreSQL 
https://renatogroffe.medium.com/postgresql-docker-compose-criando-rapidamente-ambientes-e-populando-bases-para-testes-6c4b9a4de313

# teste com vercel
curl --request POST \
  --url backend-express-postgresql-seven.vercel.app/users/register \
  --header 'Content-Type: application/json' \
  --data '{
    "name": "username example",
    "username": "username-example",
    "email": "username@gmail.com",
    "password": "password@123"
  }'

# JSON Web Tokens
https://www.npmjs.com/package/jsonwebtoken
- add no package.json "generate-secret-key": "node -e \"console.log(require('crypto').randomBytes(64).toString('hex'))\"" e rodar "npm run generate-secret-key"

# Request
- exemplo de comando: "source ./requests/POST_Register_User.sh"