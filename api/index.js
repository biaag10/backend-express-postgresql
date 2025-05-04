import express from 'express';
import dotenv from 'dotenv';
import db from './models/index.js'; // importa a configuração do banco de dados
import userRoutes from './routes/user.route.js'; // importa as rotas de usuário
// import User from './models/User.js'; // cria a collection de users
import exampleRoute from './routes/protected.route.js'; 

// dotenv.config();

db.sequelize.sync({ force: false }) // sincroniza o banco de dados
  .then(() => {
    console.log('Banco de dados sincronizado com sucesso.');
  })
  .catch((error) => {
    console.error('Erro ao sincronizar o banco de dados:', error);
  });

const app = express();
app.use(express.json()); // para aceitar JSON no corpo das requisições

app.use("/users", userRoutes); // define o prefixo para as rotas de usuário
app.use("/secure", exampleRoute); // define o prefixo para as rotas de exemplo

app.get('/', (req, res) => {
  res.send({message: 'API is running...'});
});

const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
  console.log(`Servidor rodando na porta http://localhost:${PORT}/`);
});
