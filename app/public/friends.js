$("#submit-button").on("click", function(event) {
  event.preventDefault();
  let friendObject = {
    name: $("#nameInput")
      .val()
      .trim(),
    imageLink: $("#imageInput")
      .val()
      .trim(),
    score: [
      parseInt($("#question1Input").val()),
      parseInt($("#question2Input").val()),
      parseInt($("#question3Input").val())
    ]
  };

  console.log(friendObject.score);
});
