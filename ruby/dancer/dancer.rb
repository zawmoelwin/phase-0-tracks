class Dancer

  attr_reader   :name, :card
  attr_accessor :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def pirouette
    p "*twirls*"
  end

  def bow
    p "*bows*"
  end

  def queue_dance_with(name)
    @card||=[]
    @card << name
  end


  def begin_next_dance
    temp = "Now dancing with #{card[0]}."
    card.shift
    p temp
  end

  def jump(int)
    temp = int
    p "Jumps and turn #{temp} times."
  end


end