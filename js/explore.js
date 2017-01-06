
// displaying to the screen
// console.log("put something inside");



// Nil equivilant in JavaScript is undefined.
// Null might be close one but it is an object.

// to declare a variable var keyword word is used.
// these are reserved words and you cannot use them in the variable name.


// How do you print a variable in JavaScript?
// console.log(variable);


// How do you end a line of code in JavaScript?
// use ';'

// How do you write comments in JavaScript?
// // double slash

// difference in if statement

// there is no end like Ruby in JavaScript.
// i.e. if statement is computed as they are line by line, condition by condition.
// if condition { proceed the code } 
// else if condition { proceed to the code }
// else { proceed to the code }

// conditions are in perenthesis ()
// there is no elsif as a keyword.

// Release 2

// functions are declared with function keyword.
// with ( arg1, arg2) 
// { and return inside the curly brackets}

// JavaScript do not have implicit return.
// JavaScript dont execute functions without ().

// Release 4


function reverse(string)
{
	var temp = string;
	var array = temp.split("");
	var temp1 = "";
	console.log(array);
	for (var i = array.length - 1; i >= 0; i--) {
		temp1+=(array[i]);
	}

	return temp1;
}

console.log(reverse("hello"));




