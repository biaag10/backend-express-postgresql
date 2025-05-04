# backend-express-postgresql
# Atividade Avaliativa IV.v2: Backend em Express com Autenticação (JWT) e PostgreSQL em produção

# PostgreSQL 
https://renatogroffe.medium.com/postgresql-docker-compose-criando-rapidamente-ambientes-e-populando-bases-para-testes-6c4b9a4de313

# Mongo Express
https://opulent-pancake-9r7rjvrqx95c79rr-8081.app.github.dev/db/mydatabase/

# MongoDB Atlas
https://cloud.mongodb.com/v2/6810e6b14f5f242cd5bd27d2#/metrics/replicaSet/6810e76a21ff2253f08348ec/explorer/mydatabase/users/find

# teste com vercel
curl --request POST \
  --url https://express-backend-mongodb.vercel.app/users/register \
  --header 'Content-Type: application/json' \
  --data '{
    "username": "username-example",
    "password": "password-example"
  }'

# JSON Web Tokens
https://www.npmjs.com/package/jsonwebtoken
- add no package.json "generate-secret-key": "node -e \"console.log(require('crypto').randomBytes(64).toString('hex'))\"" e rodar "npm run generate-secret-key"

# Request
- exemplo de comando: "source ./requests/POST_Register_User.sh"