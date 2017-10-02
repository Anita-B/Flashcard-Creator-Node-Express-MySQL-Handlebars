// Requiring our models
var db = require("../models");

// CATEGORY PAGE NEEDS:
  // GET SET
  // GET CATEGORY
  // GET USER

module.exports = function(app) {

  // Create all our routes and set up logic within those routes where required.

  app.get("/category/:cat", function(req, res) {
   db.Category.findAll({
      include: [{ model: db.Set }],
        where: { cat_name: req.params.cat}
      
    }).then(function(data) {
      var allSets = {catSets: data, category: req.params.cat};
      console.log(allSets);

      // console.log("----------");
      // console.log("DATA OBJECT: " + JSON.stringify(allSets.catSets));
      // console.log("----------");
      // console.log("CATEGORIES: " + JSON.stringify(allSets.catSets[0]));
      // console.log("----------");
      // console.log("SETS - ONE EXAMPLE: " + JSON.stringify(allSets.catSets[0].Sets[0]));
      // console.log("----------");
      // console.log("SETS.TITLE: " + JSON.stringify(allSets.catSets[0].Sets[0].title));
      // console.log("----------");

      res.render('category', allSets);
    });
  });


  app.get("/category/:category/:sets", function(req, res) {
    console.log("---------------- ");
    console.log("DID WE GET HERE? ");
    console.log("---------------- ");
    db.Set.findOne({
      include: [{ model: db.Flashcard}],
        where: { id: req.params.sets }

    }).then(function(data){
      console.log("ARE WE GETTING DATA?");
      // console.log(data.dataValues.Flashcards[0].dataValues.question);
      res.json(data.dataValues);
     
     
    });

  });




};
