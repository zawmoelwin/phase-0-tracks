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

	this.startengine = function() {
		console.log("Woo .. Wo.. ")
	};
}

var sport_car = new Car("alloy", "coupe", "gasoline");
console.log(sport_car);
sport_car.startengine();

var truck = new Car("steel", "truck", "disel");
console.log(truck);
truck.startengine();
for (var variable in truck) {
  console.log(variable);
  console.log(truck[variable]);
}

var mini = new Car("alloy", "mini", "gasoline");
console.log(mini);
mini.startengine();
for (var property in mini) {
    if (mini.hasOwnProperty(property)) {
        console.log(property)
    }
}