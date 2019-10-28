# FriendFinder

Friend Finder is a web application that matches users based on their responses from a survey. Once the user submits their responses, their data will be inserted to a "friends" relational database. The scores will then be compared to all the scores that have been submitted and stored from previous surveys and a match will be outputted.

The user will submit their name, image link, and a score for a series of 10 questions (scores will range from 1-3). These asnwers will be then stored in a new friend object that will be added to the database via a POST api call. Scores for incoming user will be compared to scores for every existing user in the database by minimizing the sum of differences between the answers between both users. The pair that has the lowest sum of differences will then be displayed as match.

The following technologies are implemented in this web application:
-GET route used to display array of friends data that has been inputted into db
-POST route used to send survey input to db and to apply logic for determining best friend match.
-GET Route to display survey to user
-Relational database stores submitted data
-Heroku is used for server deployment and hosting
-Heroku add-on JawsDB is used to create a remote mySQL database for app
