class Puppy

  def initialize
    puts "Initializing new puppy instance ..."
  end

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak (number)
    number.times {p "Woof!"}
  end

  def roll_over
    puts "*rolls over*"
  end

  def dog_years (cal_year)
    cal_year*7
  end

  def pee_in_toilet (condition)
    if condition
    puts "Good boy!!"
    else
    puts "Bad boy!!"
    end
  end

end

#add driver code
puppy = Puppy.new
puppy.fetch ("ball")
puppy.speak (3)
puppy.roll_over
puts puppy.dog_years(4)
puppy.pee_in_toilet(true)

class Kitten

  def initialize
          puts "Initializing new kitten instance ..."
  end

  def meow
    puts "meow"
  end

  def scratch (string)
    puts "Stop scratching #{string}"
  end

end

arr=[]
50.times do |x|
  arr[x]= Kitten.new
  end

arr.each do |x|
  x.meow
  x.scratch("coach")
end



# it should have an initialize method and at least two other instance methods. Then do the following:
#
# Use a loop to make 50 instances of your class.
# Modify your loop so that it stores all of the instances in a data structure.
# Iterate over that data structure using .each and call the instance methods you wrote on each instance. So if you wrote a Gymnast class, this is where you'd call .flip and .jump on each of your instances of Gymnast.






# #
# Add driver code at the bottom that initializes an instance of Puppy, and verify that your instance can now fetch a ball. Run the file from the command line to check your work.
# Add a speak method that takes an integer, and then prints "Woof!" that many times.
# Add a roll_over method that just prints "*rolls over*".
# Add a dog_years method that takes an integer (of human years) and converts that number to dog years, returning a new integer.
# Add one more trick -- whichever one you'd like.
# If you haven't already, update your driver code to demonstrate that all of these methods work as expected.
