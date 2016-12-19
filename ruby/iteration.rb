#Method
def our_method
	p "Testing...Before Block"
	yield("y")
	p "Testing...After Block"
end

our_method { |x| puts "#{x}"}




our_array = ["car", "airplane", "boat", "helicopter"]

our_hash = {
	name: "Jeffrey",
	age: 23,
	sex: "male"
}


#Array
p our_array

our_array.each do |item|
	puts "We travel by #{item}"
end

our_array.map! do |item|
	item + " trip"
end

p our_array


#Hash
p our_hash

our_hash.each do |key, value|
	p "#{key}: #{value}"
end

p our_hash

#RELEASE 2
puts 
puts
puts "RELEASE 2"
puts
puts "1. DELETE_IF"

#Array

our_array_2 = [1,2,3,4,5,6,7,8,9,10]

our_array_2.delete_if { |digit| digit < 5 }

p our_array_2

#Hash
our_hash_2 = {
	name: "Jeffrey",
	age: 23,
	sex: "male"
}

our_hash_2.delete_if { |key, value| key == :sex }

p our_hash_2

puts
puts "2. SELECT"

#Array
our_array_2 = [1,2,3,4,5,6,7,8,9,10]

our_array_2.select! { |digit| digit < 5 }

p our_array_2

#Hash
our_hash_2 = {
	name: "Jeffrey",
	age: 23,
	sex: "male"
}

our_hash_2.select! { |key, value| key == :sex }

p our_hash_2

puts 
puts "3. KEEP_IF"
#Array
our_array_2 = [1,2,3,4,5,6,7,8,9,10]

our_array_2.keep_if do |digit| 
	digit < 5 
end

p our_array_2

#Hash
our_hash_2 = {
	name: "Jeffrey",
	age: 23,
	sex: "male"
}

our_hash_2.keep_if { |key, value| key == :name }

p our_hash_2

puts
puts "4. MAP"
#Array
our_array_2 = [1,2,3,4,5,6,7,8,9,10]

our_array_3 = our_array_2.dup

our_array_2.each do |digit| 
	if digit < 5
		our_array_3.shift
	else
		break
	end
end

p our_array_3
