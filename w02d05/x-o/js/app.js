$(function() {
	console.log("loaded");

	var move = 0;
	var boxes = [];
	createBoxes();

	$("li").click(function() {
		var boxNo = $(this).val();
		if (move % 2 == 0) {
			$(this).text("X");
		} else {
			$(this).text("O");
		}
		//adds 1 to move
		move++;
		//adds selected box to array of boxes
		boxes.push(boxNo);
		checkWinner();
	});

	//create boxes
	function createBoxes() {
		for (var i = 0; i < 9; i++) {
			$("ul").append($("<li value='"+i+"'></li>"));
		}
	}

	// check if three in a row
	 //vertical
	 //horizontal
	 //diagonal
	 function declareWinner() {
	 	if (checkWinner() == true) {
	 		alert ("player x wins");
	 		console.log(checkWinner());
	 	}
	 }

	 function checkWinner(){
	 	if (boxes.indexOf(1) == true && boxes.indexOf(2) == true && boxes.indexOf(3) == true){
	 		return true;
	 	} else {
	 		return false;
	 	}
	 }

	//on three in a row declare winner




});