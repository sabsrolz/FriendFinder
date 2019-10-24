const path = require("path");
//GET route to survey html
module.exports = function(app) {
  app.get("/survey", function(req, res) {
    return res.sendFile(path.join(__dirname, "../public/survey.html"));
  });

  //GET route to home page
  app.get("*", function(req, res) {
    return res.sendFile(path.join(__dirname, "../public/home.html"));
  });
};
