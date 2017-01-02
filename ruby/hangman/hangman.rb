
# One user can enter a word (or phrase, if you would like your game to support that), and another user attempts to guess the word.
# Guesses are limited, and the number of guesses available is related to the length of the word.
# Repeated guesses do not count against the user.
# The guessing player receives continual feedback on the current state of the word. So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
# The user should get a congratulatory message if they win, and a taunting message if they lose.


class Game
	attr_reader :source_word
	attr_reader :display_word
	attr_accessor :guessed_letters 

	def initialize(word)
		@source_word=word 
		@display_word = Array.new(word.length) { " _" }
	 # puts	@display_word.join()
		@guessed_letters=" "

	end

 	def letter_check(letter)
 		letters = ('a'..'z').to_a
 		puts "Please enter letters a to z to guess" if !letters.include?(letter)
 		puts "You have already guessed this letter, please enter the new letter to try" if guessed_letters.include?(letter)
 		if letters.include?(letter) && !guessed_letters.include?(letter)
 			return true
 		else 
 			return false
 		end
 	end


	def include_check(letter)
	  puts  " in the include_check"
		letter_location = []
		@guessed_letters << letter
		word_array = @source_word.split("")
		puts word_array
		word_array.each_index do |x| 
		  if word_array[x] == letter 
		    letter_location << x 
		  end
		end
		puts letter_location
		letter_location.each_index { |x| @display_word[letter_location[x]] = letter}
		# puts "this is display world #{@display_word}"
#		return letter_location
	end

	def is_gamed()
	  puts "checking is_gamed"
		if @source_word == @display_word.join("")
		  return true
		else
		  return false
		end
	end

end



=begin
	enter a letter
	check a letter
	check it in the word
	update the guess count.
	update the display letter if it correctly guessed
	
=end

=begin
	


puts "Please enter the source word to guess"
word = gets.chomp.downcase

game = Game.new(word)

game_guess=0

until game_guess > game.source_word.length+5
  puts game.display_word.join("")
	# puts "You have #{game.source_word-game.guessed_letters}"
	puts "Please enter a letter "
	word = gets.chomp.downcase
	if game.letter_check(word)
		game.include_check(word)
		if game.is_gamed
		  game_guess = game.source_word.length+5
		end
	end
	game_guess+=1

end

if game.is_gamed
	puts "Congrautlation!! You have correctly guessed the word #{game.source_word}"
else
	puts "Oh I see, it might be too hard for you."
end

	
=end