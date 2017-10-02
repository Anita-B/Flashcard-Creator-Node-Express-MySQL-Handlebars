var express = require("express");
var bodyParser = require("body-parser");
var session = require("express-session");
// Requiring passport as we've configured it
var passport = require("./config/passport");
//methodoverride supports put and delete
//because natively we only have get and post
var methodOverride = require("method-override");

// Sets up the Express App
// =============================================================
var PORT = process.env.PORT || 3000;
var app = express();

// Requiring our models for syncing
// =============================================================
var db = require("./models");



var mysql2 = require("mysql2");

var mysql = require("mysql");

var connection;

if (process.env.JAWSDB_URL) {
  connection = mysql.createConnection(process.env.JAWSDB_URL);
}
else {
  connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "flashcards_db"
  });
};


connection.connect(function(err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }
  console.log("connected as id " + connection.threadId);
});

module.exports = connection;









// Serve static content for the app from the "public" directory in the application directory.
// =============================================================
app.use(express.static("public"));

// Sets up the Express app to handle data parsing
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.text());
app.use(bodyParser.json({ type: "application/vnd.api+json" }));
//app.use(bodyParser.urlencoded({ extended: false }));

// We need to use sessions to keep track of our user's login status
app.use(session({ secret: "keyboard cat", resave: true, saveUninitialized: true }));
app.use(passport.initialize());
app.use(passport.session());

// Override with POST having ?_method=DELETE
app.use(methodOverride("_method"));

// Set Handlebars.
var exphbs = require("express-handlebars");

app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");


// Routes
// =============================================================
// var routes = require("./routes/");

require("./routes/index_routes.js")(app);
require("./routes/category_routes.js")(app);
//require("./routes/account_routes.js")(app);
//require("./routes/flashcard_routes.js")(app);
//require("./routes/create_routes.js")(app);


// Syncing our sequelize models and then starting our Express app
// =============================================================
db.sequelize.sync().then(function() {
  app.listen(PORT, function() {
  	// CODE BELOW WILL REQUIRE INITIAL DATA.  PLEASE REMOVE AFTER 1st DEPLOYMENT TO HEROKU.
  	// require("./data/data.js")(app);

    console.log(" ");
    console.log("==> Listening on port %s. Visit http://localhost:%s/ in your browser.", PORT, PORT);
    console.log(" ");
    //console.log("App listening on PORT " + PORT);
  });
});

// REMOVING the below from inside "sync()" so that I don't have to re-add content each time I kill the server.
// { force: true }
