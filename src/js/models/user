const connection = require("../connection");
const Sequelize = require("sequelize");

const Model = Sequelize.Model;

class User extends Model {}

User.init(
    {
        id: {
            type: Sequelize.INTEGER,
            primaryKey: true,
            allowNull: false,
        },

        password: {
            type: Sequelize.STRING
        },
        email: {
            type: Sequelize.STRING
        },

        username: {
            type: Sequelize.STRING,
            allowNull: false
        },
        status: {
            type: Sequelize.INTEGER,
            allowNull: false
        },

    },
        {
            sequelize: connection,
            modelName: "User",
        }

);


module.exports = User
