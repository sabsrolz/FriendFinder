const path = require("path");
//GET route to survey html
app.get("/survey", function(req, res) {
  return res.sendFile(path.join(__dirname, "survey.html"));
});

//GET route to home page
app.get("/", function(req, res) {
  return res.sendFile(path.join(__dirname, "index.html"));
});
