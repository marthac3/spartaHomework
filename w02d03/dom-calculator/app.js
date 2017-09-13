document.addEventListener("DOMContentLoaded", function(){

	var buttons = document.getElementsByTagName("button");
	var display = document.getElementById("display");

	//create buttons
	for (i = 0; i < buttons.length; i++) {
		buttons[i].addEventListener("click", function() {
			display.innerText = this.value;
		});
		//assign number button values to 'var1' then 'var2'
		//assign operator buttons to 'choice'
	}

	//functions for calculations taking var1, var2 and choice
	//function for equals running the calculation

});