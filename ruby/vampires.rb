=begin What is your name? 

Some known vampires are in the area, and we can check against the Werewolf Intelligence Bureau database for their aliases.

How old are you? What year were you born? 
This is to try to trick the vampire, who is likely several hundreds of years old. 
If an employee gives an age and a year of birth that don’t line up mathematically, that employee might be a vampire.

Our company cafeteria serves garlic bread. Should we order some for you? 
Vampires hate garlic. Do not even get a vampire started on garlic. Invite a vampire to an Italian restaurant even one time, 
and you’ll never hear the end of it.

Would you like to enroll in the company’s health insurance? 

Vampires are immortal, so they certainly don’t need health insurance.
=end

p "What is your name"
name = gets.chomp
name = name.downcase!

p "How old are you?"
age = gets.chomp

p "What year you are born?"
year = gets.chomp

p "Our company cafeteria serves garlic bread. Should we order some for you? (y/n)"
order = gets.chomp

p "would you like to enroll in the company's health insurance? (sign up = y , do not sign up = n , waives = w)"
healthinsurance = gets.chomp

=begin
	
rescue Exception => e
	
end
def age_check
	actual_age = (2016-year)+1
	
end

def vampire_check
	if actual_age>130 && order == "n" && healthinsurance == "n"
		vampire_result = "YES"
	else
		vampire_result = nil
	end

end

age_check(year)
vampire_check()
=end

If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
Otherwise, print “Results inconclusive.”

def age_check (year)
	actual_age = (2016-year)
	retrun actual_age
end