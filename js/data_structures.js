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