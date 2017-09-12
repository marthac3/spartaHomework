var score = 0;
var compScore = 0;
while (score < 10 && compScore < 10 && set != "q"){
  // The player move is gathered and stored in a variable
      // Prompt
  var move;
  while ((move != "r") && (move != "p") && (move != "s")){
    move = prompt("(r)ock, (p)aper or (s)cissors?");
  }

  // The app generates a random computer move
    // Math.random, Math.floor
  var computerMoveIndex = Math.floor((Math.random() * 3));
  console.log(computerMoveIndex);

  // The computer move is stored in a variable

  var computerMove = null;
  if (computerMoveIndex == 0){
    computerMove = "r";
  }
  else if (computerMoveIndex == 1){
    computerMove = "p";
  }
  else {
    computerMove = "s";
  }
  console.log(computerMove);
  // Compare moves and see who has won, or if it's a draw
    // If the moves are the same, it's a draw
    // Rock beats scissors
    // Scissors beat paper
    // Paper beats rock
  var result = null;
  if (move === computerMove){
    result = "draw";
  }
  else if (move === "r" && computerMove === "s"){
    result = "win";
    score++;
  }
  else if (move === "s" && computerMove === "p"){
    result = "win";
    score++;
  }
  else if (move === "p" && computerMove === "r"){
    result = "win";
    score++;
  }
  else {
    result = "lose";
    compScore++;
  }


  // Tell the user the outcome of the game
      // Alert
  alert ("You played: " + move + ", computer played " + computerMove + ". The result is " + result);
  alert ("The score is You: " + score + " Computer: " + compScore);
  if (score == 10){
    alert ("You are the winner!");
  }
  else if (compScore == 10){
    alert ("The computer is the winner!");
  }
  move = null;

  var set = prompt("type (x) to reset the game or (q) to quit, or enter to continue");

  if (set == "x") {
    score = 0;
    compScore = 0;
  }

}
// BONUS
    // Update the scores for computer and player

    // The first player to reach a score of 10 is the overall winner

    // Be able to reset the game