var array1 = [ "blue" ,"yellow" ,"red" , "green"] ;
var array2 = ["Steven" ,"Julie" ,"Joe" ,"Alex"] ;

array1.push("purple");
array2.push("Fred");

var horse = {};

for (var i=0; i<array1.length; i++)
{
	horse[array2[i]] = array1[i];
}

console.log(horse);


function Car (wheels, body, fuel_type) {
	this.wheels = wheels;
	this.body =body;
	this.fuel_type=fuel_type;

	this.startengine = function {
		console.log("Woo .. Wo.. ")
	}
}

var sport_car = new Car("alloy", "coupe", "gasoline")