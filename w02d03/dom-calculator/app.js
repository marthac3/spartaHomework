document.addEventListener("DOMContentLoaded", function(){

	var buttons = document.getElementsByTagName("button");
	var display = document.getElementById("display");

	var val1 = null;
	var val2 = null;
	var op = null;
	var ans = null;
	var operators = ["+", "-", "/", "C", "=", "*"]

	//create buttons
	for (i = 0; i < buttons.length; i++) {
		buttons[i].addEventListener("click", function() {
			display.innerText = this.value;
			if (operators.indexOf(this.value) == -1) {
				if (val1 == null){
					val1 = parseFloat(this.value);
				} else if (val2 == null){
					val2 = parseFloat(this.value);
				} else {
					alert ("both numbers chosen");
				}
			} else if (this.value != "C" && this.value != "="){
				if (op == null) {
					op = this.value;
				} else {
					alert ("you have already selected an operator");
				}
			} else if (this.value == "C") {
				remove();
				display.innerText = "cleared";
			} else if (this.value == "="){ // = calls the calculation function for the op
				if(op == "+") {
	                ans = add(val1, val2);
	            } else if(op == "-") {
	                ans = subtract(val1, val2);
	            } else if(op == "*") {
	                ans = multiply(val1, val2);
	            } else if(op == "/") {
	                ans = divide(val1, val2);
	            }
	            display.innerText = ans;
	            remove();
			}
		});
		//assign number button values to 'val1' then 'val2'
		//assign operator buttons to 'choice'
	}

	//functions for calculations taking val1, val2 and choice
	//function for equals running the calculation and returning val1 etc to null

	function add(v1, v2){
    return v1 + v2;
	}

	function subtract(v1, v2){
	    return v1 - v2;
	}

	function multiply(v1, v2){
	    return v1 * v2;
	}

	function divide(v1, v2){
	    return v1 / v2;
	}

	function remove(){
		val1 = null;
		val2 = null;
		op = null;
		ans = null;
	}

});