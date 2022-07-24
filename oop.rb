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
p vampire1.name
p vampire1.pet
p vampire1.thirsty
vampire1.drinks
p vampire1.thirsty
# I'm getting nil

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
  attr_reader :name, :rider, :color, :is_hungry
  def initialize(name, rider, color)
    @name = name
    @rider = rider
    @color = color
    @is_hungry = true
    @hunger = 0
    # def @hunger - if hunger == 4 is_hungry = false
  end

  def eat
    @hunger += 1
    if @hunger >= 4
      @is_hungry = false
    end
  end
end
# I tried to set up a feed counter but I'm not sure
dragon1 = Dragon.new("Falnir", "Rilius Beetle", "Red")
p dragon1
p dragon1.is_hungry
dragon1.eat
dragon1.eat
dragon1.eat
dragon1.eat
p dragon1.is_hungry

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
  def initialize(name, disposition, age)
    @name = name
    @disposition = disposition
    @age = age
    @is_adult = false
    @is_old = false
    @has_ring = false
  end

  def celebrate_birthday
    @age += 1
    if @age >= 33 && @age < 101
      @is_adult = true
    elsif @age >= 101
      @is_old = true
      @is_adult = true
    end
    "I am now #{@age} years old!"
  end

  def ring
    if @name == "Frodo" && @age >= 33 && @age <= 50
      @has_ring = true
      "I wish it never came to me"
    elsif @name == "Frodo" && @age > 50
      "The ring has been destroyed"
    elsif @name == "Sam" && @age >= 21 && @age <= 38
      "Mr Frodo sure doesn't age huh since he got that nice ring from Mr Bilbo huh?"
    elsif @name == "Sam" && @age > 38
      "Mr Frodo destroyed the Ring"
    elsif @name == "Merry" && @age >= 19 && @age <= 36
      "Mr Frodo sure doesn't age huh since he got that nice ring from Mr Bilbo huh?"
    elsif @name == "Merry" && @age > 36
      "Mr Frodo destroyed the Ring"
    elsif @name == "Pippin" && @age >= 11 && @age <= 28
      "Mr Frodo sure doesn't age huh since he got that nice ring from Mr Bilbo huh?"
    elsif @name == "Pippin" && @age > 28
      "Mr Frodo destroyed the Ring"
    elsif @name == "Bilbo" && @age >= 50 && @age <= 111
      "Look at this nifty Ring I got from Gollum"
    elsif @name == "Bilbo" && @age > 111 && @age <= 128
      "I gave my Ring to my beloved nephew Frodo!"
    elsif @name == "Bilbo" && @age > 128
      "My beloved Nephew has lost my Ring, we now sail for Valinor with Gandalf and Elrond"
    else
      @has_ring = false
      "No-one knows where the ring is"
    end
  end

end

hobbit1 = Hobbit.new("Pippin", "Clumsy", 16)
p hobbit1.celebrate_birthday
p hobbit1.ring
p hobbit1.celebrate_birthday
p hobbit1.ring
hobbit2 = Hobbit.new("Bilbo", "Nostalgic", 127)
p hobbit2.celebrate_birthday
p hobbit2.ring
p hobbit2.celebrate_birthday
p hobbit2.ring
hobbit3 = Hobbit.new("Frodo", "Kind", 31)
p hobbit3.celebrate_birthday
p hobbit3.ring
p hobbit3.celebrate_birthday
p hobbit3.ring

# I keep getting a message about unexpected end of input and I don't know why
