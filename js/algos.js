// In algos.js, write a function that takes an array of words or phrases and
// returns the longest word or phrase in the array. So if we gave your function
// the array of ["long phrase","longest phrase","longer phrase"], it would return
// "longest phrase". This is a logical reasoning challenge, so try to reason
// through this based on what you already know, rather than Googling the fanciest
// solution or looking up built-in sorting functions. Note that "some
// string".length will do what you expect in JS. Add driver code that tests your
// function on a few arrays.


function longest_phrase (string_array) 
{var position = string_array.length-1;
	for (var i = string_array.length - 1; i >= 0; i--) {
		if (string_array[i].length>=string_array[position].length){
			position = i;

		}

	}
	return position;

}



// In algos.js, write a function that takes two objects and checks to see if the objects share at least one key-value pair. (You'll keep adding to this file, so we suggest grouping functions at the top and testing at the bottom of the file.) If we called your function with {name: "Steven", age: 54} and {name: "Tamir", age: 54}, the function would return true, because at least one key-value pair matches between the two objects. If no pairs match (and keep in mind that the two objects may not even have any of the same keys), the function should return false. To make your life easier, don't worry about whether a property is a string ('age') or an identifier name (age). Those can be considered equivalent. Again, try to reason through the problem using the basics you've already learned, rather than looking up slick search functions that will do the job for you. We'd rather see you write code that you actually understand!
// Add some driver code that tests both outcomes of your function.


function check_key (obj1, obj2)
{ var key_status = false;
	var first_obj = Object.keys(obj1);
	var second_obj = Object.keys(obj2);
	for (var i = first_obj.length - 1; i >= 0; i--) {
		if ( second_obj.indexOf(first_obj[i]) > -1 )
		{
			key_status= true;
		}
	}
	return key_status;
}

// Write a function that takes an integer for length, and builds and returns an array of strings of the given length. So if we ran your function with an argument of 3, we would get an array of 3 random words back (the words don't have to be actual sensical English words -- "nnnnfph" totally counts). The words should be of randomly varying length, with a minimum of 1 letter and a maximum of 10 letters. (This involves a new trick, generating a random number, that you'll have to look up, but the solution on how to do so is relatively straightforward.)
// Add driver code that does the following 10 times: generates an array, prints the array, feeds the array to your "longest word" function, and prints the result.

//get input for the arr size
// for loop for that arr size 
	//random number for the word size (probably another for loop)
	//adding random letter to the word until that size
	//put that word to the array
// return that array.


//get the two objects
//make them into arrays of keys
	//loop through one of the array checking each content with the other array

//make a key string
	//math.random to determine the size of the word 
		//use for loop to create random word using math.random and add each char to the words
//above steps are repeated accoring to the size of the array argument.



function word_maker (size)
{
	var key = "abcdefghijklmnopqrstuvwxyz"
	var word_size;
	var temp_word = ""; 
	var word_array = [];
	var i = size-1;

	for (i; i >= 0; i--) {
		word_size = Math.floor(Math.random()*10 +1);
			
		for (word_size; word_size>= 0; word_size--) {
			temp_word+= key.charAt(Math.floor(Math.random()*26 ));
			//console.log(word_size);
		}		
		word_array[i]=temp_word;
		temp_word="";
	}
	return word_array;
}




//======================driver code========================

var word = [];
for (var i = 10; i > 0; i--) {
	word = word_maker( Math.floor(Math.random()*10 +1));

	console.log(word);
	console.log(word[longest_phrase(word)]);
}









// array = ["apple", "pineapple","orange", "grape", "pear"]
// console.log (array[longest_phrase (array)]);

// var obj_1 = {make: 2, model: 1985, name: "toyota"};
// var obj_2 = {name: "Steven", age: 30, sex: "Male"};


// console.log (check_key(obj_1, obj_2));