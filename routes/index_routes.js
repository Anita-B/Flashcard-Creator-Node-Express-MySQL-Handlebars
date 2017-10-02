// Requiring our models
var db = require("../models");
var passport = require("../config/passport");


// Requiring path to so we can use relative routes to our HTML files
var path = require("path");

// Requiring our custom middleware for checking if a user is logged in
//var isAuthenticated = require("../config/middleware/isAuthenticated");

// HOME PAGE NEEDS:
  // GET SET
  // GET CATEGORY
  // GET USER
  // links to user page, category page, set page.


// Routes =============================================================
module.exports = function(app) {

  // Flashy home page
  app.get("/", function(req, res) {
    
      res.redirect("/index");

  });

  // Signup page
  app.get("/signup", function(req, res) {
   
      res.sendFile(path.join(__dirname, "../public/signup.html"));
 
  });

  // Login page
  app.get("/login", function(req, res) {
   
      res.sendFile(path.join(__dirname, "../public/login.html"));

  });

  // Here we've add our isAuthenticated middleware to this route.
  // If a user who is not logged in tries to access this route they will be redirected to the Flashy home page
  //app.get("/api/login", isAuthenticated, function(req, res) {
  //res.json("/create");
  //console.log("user is logged in.")
  //});



  //-------------------------------------------------------------
  //-- api routes -----------------------------------------------

  // Using the passport.authenticate middleware with our local strategy.
  // If the user has valid login credentials, send them to the Create Flashcards page.
  // Otherwise the user will be sent an error
  app.post("/api/login", passport.authenticate("local"), function(req, res) {
    // Since we're doing a POST with javascript, we can't actually redirect that post into a GET request
    // So we're sending the user back the route to the home page because the redirect will happen on the front end
    // They won't get this or even be able to access this page if they aren't authed
    res.json("/create");
  });

  // Route for signing up a user. The user's password is automatically hashed and stored securely thanks to
  // how we configured our Sequelize User Model. If the user is created successfully, proceed to log the user in,
  // otherwise send back an error
  app.post("/api/signup", function(req, res) {
    //console.log("Got to /api/signup");
    console.log(req.body);
    db.User.create({
      username: req.body.username,
      password: req.body.password,
      displayname: req.body.displayname
    }).then(function() {
      res.json("/create");
      //res.redirect(307, "/create");
    }).catch(function(err) {
      console.log(" ");
      console.log("Signup error due to duplicate entry: " + err);
      console.log(" ");
      res.send("Error_duplicate_entry_Use_back_browser_arrow_to_return_to_Login_page");
      //res.send("/signup");
      //res.json(err);
      //res.status(422).json(err.errors[0].message);
    });
  });

  // Route for logging user out
  app.get("/logout", function(req, res) {
    req.logout();
    res.redirect("/index");
  });

  // Route for getting some data about our user to be used client side
  app.get("/api/user_data", function(req, res) {
    if (!req.user) {
      // The user is not logged in, send back an empty object
      res.json({});
    } else {
      // Otherwise send back the user's email and id
      // Sending back a password, even a hashed password, isn't a good idea
      res.json({
        username: req.user.username,
        password: req.user.password,
        displayname: req.user.displayname,
        id: req.user.id
      });
    }
  });





  app.get("/index", function(req, res) {
    

    db.Category.findAll({
      include: [{ model: db.Set }],
        where: req.query

    }).then(function(data) {

      db.Set.findAll({

        where: {
             UserId: 1
           }}).then(function(data2) {
      var allCategories = {cats: data, mysets : data2};

      // console.log("----------");
      // console.log("DATA OBJECT: " + JSON.stringify(allCategories.cats));
      // console.log("----------");
      // console.log("CATEGORIES: " + JSON.stringify(allCategories.cats[0]));
      // console.log("----------");
      // console.log("SETS_ONE: " + JSON.stringify(allCategories.cats[0].Sets[0]));
      // console.log("----------");
      // console.log("SETS.TITLE: " + JSON.stringify(allCategories.cats[0].Sets[0].title));
      // console.log("----------");

      res.render("index", allCategories);
    });
    });
  });




  app.get("/api/:sets", function(req, res) {
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


  app.get("/create", function(req, res) {

    db.Category.findAll({
    }).then(function(data) {
      console.log("here in create route");
      res.render("create.handlebars", data);
    });

  });


  // create flashcards data is posted here
  app.post("/create", function(req, res) {
    console.log("got here to post create in index.routes");

   console.log("title:"+req.body.flashcards_title);
    console.log("category:"+req.body.category);

   //Flashcard 1
    console.log(req.body.q1);
    console.log(req.body.a1);

   //Flashcard 2
    console.log(req.body.q2);
    console.log(req.body.a2);

   //Flashcard 3
    console.log(req.body.q3);
    console.log(req.body.a3);

   db.Category.findOne({
      where: {
        cat_name: req.body.category
      }
    }
     ).then(function(data) {
      console.log("USER data (id): " + data.id);
      console.log("USER data (catname): " + data.cat_name);

     var mynewset = db.Set.create({
        title: req.body.flashcards_title,
        url: 'www.google.com',
         CategoryId: data.id,
         UserId: 1,



      }).then(function(data2) {
         console.log("CategoryID: "+ data2.id);

     var mynewcard1 = db.Flashcard.create({

         flash_num: 1,
         question: req.body.q1,
         answer: req.body.a1,
         SetId: data2.id
      });

     var mynewcard2 = db.Flashcard.create({

         flash_num: 2,
         question: req.body.q2,
         answer: req.body.a2,
         SetId: data2.id
       });

    var mynewcard3 = db.Flashcard.create({

        flash_num: 3,
        question: req.body.q3,
        answer: req.body.a3,
        SetId: data2.id

     });
      res.redirect("/index");
      });
    });
  });


  

};
