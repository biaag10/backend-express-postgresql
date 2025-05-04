import dbConfig from '../config/db.config.js';
import { Sequelize } from 'sequelize';
import User from './User.js';
import pg from 'pg';

// Verificar se o ambiente é produção (Vercel)
const isProduction = process.env.NODE_ENV === 'production';

const sequelize = new Sequelize(
    dbConfig.database,
    dbConfig.user,
    dbConfig.password,
  {
    host: dbConfig.host,
    dialect: dbConfig.dialect,
    port: dbConfig.port,
    dialectModule: pg,
    dialectOptions: isProduction
      ? { ssl: { require: true, rejectUnauthorized: false } }  // SSL apenas em produção
      : {},  // Sem SSL localmente
    pool: {
      max: dbConfig.pool.max,
      min: dbConfig.pool.min,
      acquire: dbConfig.pool.acquire,
      idle: dbConfig.pool.idle,
      evict: dbConfig.pool.evict
    }
  }
);

const db = {};

db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.users = User(sequelize, Sequelize);

export default db;
