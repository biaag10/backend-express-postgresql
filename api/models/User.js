// modelo de usuário
export default(sequelize, Sequelize) => {
  const User = sequelize.define('user', {
    id: {
      type: Sequelize.INTEGER,
      autoIncrement: true,
      primaryKey: true,
    },
    name: {
      type: Sequelize.STRING,
      allowNull: false,
    },
    username: {
      type: Sequelize.STRING,
      allowNull: false,
      unique: true, // garante que o nome de usuário seja único
    },
    email: {
      type: Sequelize.STRING,
      allowNull: false,
      unique: true, // garante que o email seja único
      validate: {
        isEmail: true, // validação de formato de email
      },
    },
    password: {
      type: Sequelize.STRING,
      allowNull: false,
    }
  }, {
    timestamps: true, // adiciona os campos de createdAt e updatedAt
  });

  return User;
}