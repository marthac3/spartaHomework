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
			if (operators.indexOf(this.value) == -1) { //exclude all operators
				if (val1 == null){
					val1 = this.value;
				} else if (val1 != null && op == null) { //val1 entered before operator
					val1 += (this.value); //left as string to enable multiple digit numbers
				} else if (val2 == null) { 
					val2 = this.value;
				} else if (val2 != null && op != null){ //val2 entered after operator
					val2 += (this.value);
				} else {
					alert ("both numbers chosen"); //unnecessary, left over from single digit entry
				}
			} else if (this.value != "C" && this.value != "="){ //only includes math operators
				if (op == null) {
					op = this.value;
				} else {
					alert ("you have already selected an operator");
				}
			} else if (this.value == "C") {
				remove(); //calls remove function
				display.innerText = "cleared"; //confirms entry is cleared, maybe unnecessary
			} else if (this.value == "="){ 
				val1 = parseFloat(val1); //values now floats for calculations
				val2 = parseFloat(val2);
				if(op == "+") { // = calls the calculation function for the op
	                ans = add(val1, val2);
	            } else if(op == "-") {
	                ans = subtract(val1, val2);
	            } else if(op == "*") {
	                ans = multiply(val1, val2);
	            } else if(op == "/") {
	                ans = divide(val1, val2);
	            }
	            display.innerText = ans;
	            remove(); //display the answer and then clear the values
			}
		});
	}

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