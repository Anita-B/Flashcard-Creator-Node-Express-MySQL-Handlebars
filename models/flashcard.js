module.exports = function(sequelize, DataTypes) {
  var Flashcard = sequelize.define("Flashcard", {
    flash_num: {
      type: DataTypes.INTEGER
    },
    question: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [1, 500]
      }
    },
    answer: {
      type: DataTypes.STRING,
      allowNull: false,
      validate: {
        len: [1, 500]
      }
    }
  });


  Flashcard.associate = function(models) {
    //Associates a Set to the User who created it.
    Flashcard.belongsTo(models.Set, {
      foreignKey: {
        allowNull: true
      }
    });
  };


// // force: true will drop the table if it already exists
//   Flashcard.sync({force: true}).then(() => {
//     // Table created
//     Flashcard.create({
//     flash_num: 1,
//     question: 'What is 2 + 2?',
//     answer: '4',
//     SetId: 1
//     });

//     Flashcard.create({
//     flash_num: 2,
//     question: 'What is 5 - 3?',
//     answer: '2',
//     SetId: 1
//     });

//     Flashcard.create({
//     flash_num: 1,
//     question: '5 x 3 = ?',
//     answer: '15',
//     SetId: 2
//     });

//     Flashcard.create({
//     flash_num: 2,
//     question: '12 x 5 = ?',
//     answer: '60',
//     SetId: 2
//     });
//   });

  return Flashcard;
};
