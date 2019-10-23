//import node packages
const express = require("express");
const path = require("path");

//set up express app
let app = express();
const PORT = process.env.PORT || 8080;

//set up express app to handle data parsing
app.use(express.urlencoded({ extended: true }));
app.use(express.json());

require("./app/routing/apiRoutes")(app);
require("./app/routing/htmlRoutes")(app);
//start the server to begin listening
app.listen(PORT, function() {
  console.log(`app is listening on port ${PORT} `);
});
