let friends = require("../data/friends");
//let cors = require("cors");
//let friends = [];

module.exports = function(app) {
  app.get("/api/friends", function(req, res) {
    res.json(friends);
  });

  app.post("/api/friends", function(req, res) {
    let newFriend = req.body;
    let newFriendScore = req.body.score;
    let currentFriendScore = [];
    let difference = [];
    let totalDifference = [];

    console.log(newFriend);
    // friends.push(newFriend);
    console.log(friends);
    //console.log(req.body);

    for (let friend = 0; friend < friends.length - 1; friend++) {
      //currentFriendScore = [];
      currentFriendScore = friends[friend].score;
      // console.log(currentFriendScore);
      // console.log(newFriendScore);
      for (let index = 0; index < currentFriendScore.length; index++) {
        let diff = Math.abs(
          parseInt(currentFriendScore[index]) - parseInt(newFriendScore[index])
        );
        difference.push(diff);
        //console.log(diff);
      }
      console.log(difference);
      //add array of differences
      //totalSums.push(sum)
    }
    //find minimum

    //res.json
    //response is match
  });
};
