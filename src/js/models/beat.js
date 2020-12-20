const connection = require("../connection");
const Sequelize = require("sequelize");

const Model = Sequelize.Model;

class beat extends Model {}

beat.init(
    {
        id_Guit: {
            type: Sequelize.INTEGER,
            allowNull: true

        },
        interval: {
            type: Sequelize.INTEGER,
            allowNull: true

        },

    },
    {
        sequelize: connection,
        modelName: "Commit",
    }
);

module.exports = beat
