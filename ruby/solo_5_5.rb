=begin
Swapping the first and last name.
Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet.
So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.
=end

=begin
Planning to find the key in hash and divide them into consonant and vowel
but after looking at the codes, it is much easier merge these two hash key and
find the value

def vowel_encrypt(vowel)
	vowel_key_hash = ["a"=> "e","e" =>"i", "i"=> "o", "o" =>"u", "u" =>"a"]
	return vowel_key_hash(vowel)
end

def consonant_encrypt (consonant)
  consonant_key_hash =
	['b' =>'c','c' =>'d','d' =>'f','f' =>'g','g' =>'h','h' =>'j','j' =>'k','k' =>'l','l' =>'m','m' =>'n','n' =>'p','p' =>'q','q' =>'r','r' =>'s','s' =>'t','t'=> 'v','v' =>'w','w'=> 'x','x' =>'y','y' =>'z','z'=>'b' ]
	return consonant_key_hash (consonant)
end
=end
def encrypt (string)
	returnarray = []
	key_hash =
  {	"a"=> "e","e" =>"i", "i"=> "o", "o" =>"u", "u" =>"a",'b' =>'c','c' =>'d','d' =>'f','f' =>'g','g' =>'h','h' =>'j','j' =>'k','k' =>'l','l' =>'m','m' =>'n','n' =>'p','p' =>'q','q' =>'r','r' =>'s','s' =>'t','t'=> 'v','v' =>'w','w'=> 'x','x' =>'y','y' =>'z','z'=>'b' }
	encode = string.downcase.split('')
	#p encode


	encode.each_index do |x|
			if key_hash.has_key?(encode[x])
				#p key_hash[encode[x]]
				returnarray.push( key_hash[encode[x]])
				#p returnarray
			else
				returnarray.push(encode[x])
		  end
  	end
	return returnarray.join
end

encrypt ("hello world!@#$%")

def swap (string)
	temp = string.downcase.split (" ")
	temp [0] , temp [1] = temp [1] , temp [0]
	string = temp.join (" ")
	return string
end
swap ("hello world")


def user_interface
	p "please type"" ""quit"" ""to quit"
	p "Type name to encrypt: : "
	user_input = gets.chomp.downcase
	return user_input
end


user_input = ""
input_hash = {}
until user_input == "quit"
	user_input = user_interface()
	if !(user_input=="quit")
	input_hash.merge! ({user_input => encrypt(swap(user_input))})
#  p encrypt(swap(user_input)).class
	end
end
p input_hash

=begin
I thought of a hash key for all the letters, vowels and consonants, that eliminate
the need of edge conditions or figuring out if a letter is a vowel.
But I am just lucky to find a shortcut here. I might not be able to find such answer
next time.


When will it be helpful to convert the string to an array to work with it more easily?
use of index and iterate through the array.

How will you figure out whether a letter is a vowel?
creating a hash for aeiou and look for has_key or look for a value in an array might be
more traditional solution.

How will you deal with the fact that some letters are uppercase?
string.downcase

How will you handle edge cases?
use of if and check for edge cases might be the traditional answer
=end
