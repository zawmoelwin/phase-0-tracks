# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end
#   def self.yell_happily(worlds)
#   	words + "!!!" + " :)"
#   end
# end

# Comment out the old code in shout.rb, and make a mixin version of the Shout module instead.
# Write two classes representing anything that might shout, and include the Shout module in those classes.
# Test your work by adding driver code at the bottom of the file that instantiates instances of your classes and calls the two module methods on each instance.

module Shout
  def yell_painfully(words)
    "Ouch! " + words + "!!!" + " :("
  end

  def yell_happily(words)
  	"Yay!" + words + "!!!" + " :)"
  end
end

class Check_result
	include Shout
end

class Fall
	include Shout
end

x = Check_result.new
puts x.yell_happily("I passed")
y = Fall.new
puts y.yell_painfully("Ah yo")