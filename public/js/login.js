$(document).ready(function() {
  // Getting references to our form and inputs
  var loginForm = $("form.login");
  var emailInput = $("input#email-input");
  var passwordInput = $("input#password-input");

  // When the form is submitted, we validate there's an email, password, and displayname entered
  loginForm.on("submit", function(event) {
    event.preventDefault();
    var userData = {
      username: emailInput.val().trim(),
      password: passwordInput.val().trim()
    };

    if (!userData.username || !userData.password) {
      $("#alert .msg").text("All fields cannot be left empty. Please try again.");
      $("#alert").fadeIn(500);
      return; 
    }

    // If we have an email and password we run the loginUser function and clear the form
    loginUser(userData.username, userData.password);
    emailInput.val("");
    passwordInput.val("");
  });

  // loginUser does a post to our "api/login" route and if successful, redirects us to the Create Flashcards page
  function loginUser(username, password) {
    $.post("/api/login", {
      username: username,
      password: password
    }).then(function(data) {
      window.location.replace(data);
      // If there's an error, log the error
    }).catch(function(err) {
      console.log("Login error: " + err);
      $("#alert .msg").text("Incorrect username and/or password. Please try again.");
      $("#alert").fadeIn(500);
    });
  }

});
