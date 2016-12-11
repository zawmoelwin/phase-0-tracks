# Read every letter in the string.
# Store each letter into a local variable.
# Push each letter to the next letter.
# Place it back to original string.
# Do each step for every letter in the string.
# Print back result.

# METHOD DECLARATIONS
# Encrypts string
def encrypt(string)
	i = 0
	# Loop over string's letters
	while i < string.length
	# If letter is 'z' set it to 'a'
	if string[i] == "z"
		string[i] = "a"
	# If there is a space, do nothing
	elsif string[i] == " "
		string[i]
	else
	# Otherwise set the current letter to the next letter
		string[i] = string[i].next
	end
		i += 1
	end
	# Return the result
	return string
end

# Decrypts string
=begin
	
make a string of keys = let it be key chain
search for the letter in the key chain and decrease an index
save the decreased index and assign the letter found at that keychain position into the 
decrypted password.
run these codes until the length of the password is arrived
return 
	
=end
# think this concept is better one as it does not need special condition checking for edge cases.

def decrypt(string)
	password = ""
	temp = 0
	i = 0
	keystring = "abcdefghijklmnopqrstuvwxyz"
	while i < string.length
		temp = string[i]
		temp_index = keystring.index(temp)
		temp_index -= 1
		password[i] = keystring[temp_index]
		i += 1
	end
	return password
end

# encrypt("abc") => "bcd"
# encrpyt("zed") => "afe"
# decrypt("bcd") => "zed"
# decrypt("afe") => "abc"

# decrypt(encrypt("swordfish"))
# Calling nested methods work as expected.
# First it encrypts "swordfish" and then returns the string "txpsegjti".
# Next it passes that string into the decrypt method.
# The decrypt method accepts the string and returns "swordfish".

# DRIVER CODE
# Ask user to encrypt or decrypt
puts "Would you like to 'encrypt' or 'decrypt' message? (e/d)"
answer = gets.chomp.downcase

# Ask user for message
puts "Please enter message:"
message = gets.chomp.downcase

# Set variable to call method of user's choice
if answer == "e"
	final_message = encrypt(message)
else answer == "d"
	final_message = decrypt(message)
end

# Display encrypted/decrypted message
puts final_message