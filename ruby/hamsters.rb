=begin
	
	
What happens if you divide an integer by a float? How is that different from when you divide an integer by an integer? Experiment with some other operations as well.
It gives out a float number even if it is completely divisible for example 
 1/0.01 gives out 100.0


What happens when you try to add nil to something?
it will accept without a problem.

Does IRB allow you to define and call a method that adds two floats?
IRB register the def method and allow me to call after that.

What happens when you run "5".to_i? What happens when you call the similar built-in method .to_f on an integer or on the string "6"? 
to_i gives me integer, to_f gives me float number.

What do you think these methods are doing? 
convert string to integer or float.
=end


#hamster's name (the clerk names any hamsters who come in without name tags, so all hamsters have names)
p "what is the name of the Hamster"
hamster_name = gets.chomp!

p "What is the sound level of the Hamster (from 1 to 10)"
sound_level = gets.chomp.to_i

#fur color
p "What is the fur color of the hamster (Give dominent color)"
color = gets.chomp!

#whether the hamster is a good candidate for adoption
p "Is the hamster is a good candidate for adoption? (y/n)"
adoption = gets.chomp!

#estimated age
p "What is the estimated age of the hamster"
age = gets.chomp

if age == ""
	
	age = nil
	
	
else
	
		age = age.to_i
	
	end
	
p " The  #{color} hamster  #{hamster_name} has noise level of #{sound_level}" 

if age == nil 
  
  p "Its age is not known"
  
else
  
p "Its age is #{age}"
    
  end

  if adoption == "y"
p "It is ready for adoption" 
else
p "It need some more training to be ready for adoption" 	
  end