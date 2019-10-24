//let friends = require("../data/friends");

const mysql = require("mysql");
let connection = mysql.createConnection({
  host: "localhost",
  port: 3306,
  user: "root",
  password: "Coquisolz18",
  database: "friends_db"
});

connection.connect(function(err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }
  console.log("connected as id " + connection.threadId);
});

module.exports = function(app) {
  app.get("/api/friends", function(req, res) {
    connection.query(`SELECT * FROM friends`, function(err, results) {
      if (err) throw err;
      res.json(results);
    });
  });

  app.post("/api/friends", function(req, res) {
    let queryString = `SELECT * FROM friends`;
    connection.query(queryString, function(err, friends) {
      if (err) throw err;

      let newFriend = req.body;
      let newFriendScore = req.body.score;
      let currentFriendScore = [];
      let difference = [];
      let totalSums = [];

      for (let friend = 0; friend < friends.length; friend++) {
        let sum = 0;
        difference = [];
        currentFriendScore = [
          friends[friend].score1,
          friends[friend].score2,
          friends[friend].score3
        ];
        console.log("New friend score", newFriendScore);
        console.log("Current friend score", currentFriendScore);

        for (let index = 0; index < currentFriendScore.length; index++) {
          let diff = Math.abs(
            parseInt(currentFriendScore[index]) -
              parseInt(newFriendScore[index])
          );
          difference.push(diff);
        }
        console.log("difference array", difference);
        for (let int = 0; int < difference.length; int++) {
          sum = sum + difference[int];
          //temporary friend object and insert sum for each friend
        }
        friends[friend]["sum"] = sum;

        totalSums.push(sum);
        console.log("total sums array", totalSums);
      }

      //find minimum
      sortedFriends = friends.sort((a, b) => a.sum - b.sum);
      console.log(sortedFriends);
      //best match will be index 0 of sortedFriends
      let bestMatch = sortedFriends[0];

      //res.json(bestMatch);
      //response is match

      res.json(bestMatch);
      connection.query(
        `INSERT INTO friends (friend_name, image_url, score1, score2, score3) VALUES ("${
          newFriend.name
        }", "${newFriend.imageLink}", ${newFriend.score[0]}, ${
          newFriend.score[1]
        }, ${newFriend.score[2]} );`,
        function(err, results) {
          if (err) throw err;
        }
      );
    });
    //connection.end();
  });
};
