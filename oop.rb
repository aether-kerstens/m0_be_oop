# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
  def initialize(name)
    @color = "silver"
    @name = name
    @hooves = 4
    @horn = 1
  end
  def sparkle
    puts "*~* #{@name} *~*"
  end
end

unicorn1 = Unicorn.new("Alain")
p unicorn1.sparkle

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
  attr_reader :pet, :name, :thirsty
  def initialize(name)
    @pet = "bat"
    @name = name
    @thirsty = true
  end
  def drinks
    @thirsty = false
  end
end
vampire1 = Vampire.new("Dracula")
p vampire1.drinks
# I'm getting nil

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
  attr_reader :name, :rider, :color
  def initialize(name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
    @hunger = 0
    # def @hunger - if hunger == 4 is_hungry = false
  end
  def eat
    @hunger + 1
    if hunger > 4

      @is_hungry = false
    end
  end
end
# I tried to set up a feed counter but I'm not sure
dragon1 = Dragon.new("Falnir", "Rilius Beetle", "Red")
p dragon1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
  attr_reader :name, :disposition, :age, :is_adult, :is_old, :has_ring
  def initialize(name, disposition)
    @name = name
    @disposition = disposition
    @age = 0
  def has_ring
    if name == "Frodo"
      @has_ring = true
    else
      @has_ring = false
    end
  def is_adult
    if age >= 33
      @is_adult = true
    else
      @is_adult = false
    end
  def is_old
    if age >= 101
      @is_old = true
    else
      @is_false = false
    end
  def age
    @age + 1
  end
end

hobbit1 = Hobbit.new("Frodo", "Laidback")
p hobbit1
# I keep getting a message about unexpected end of input and I don't know why
