# PHASE 2

def convert_to_int(str)
  begin
    Integer(str)
  rescue
    raise "not an integer input"
  end
end

# PHASE 3
FRUITS = ["apple", "banana", "orange"]
class CoffeeError < StandardError
  def message
    "Coffee not a fruit, but hey, we need coffee too... Please enter a fruit"
  end
end

class NoFruitError < StandardError
  def message
    "Not a fruit"
  end
end

def reaction(maybe_fruit)
    if  FRUITS.include? maybe_fruit
      puts "OMG, thanks so much for the #{maybe_fruit}!"
    # raise "not a fruit"
    elsif maybe_fruit == "coffee"
      raise CoffeeError
    else
      raise NoFruitError
  end 
end

def feed_me_a_fruit
  puts "Hello, I am a friendly monster. :)"
  begin
    puts "Feed me a fruit! (Enter the name of a fruit:)"
    maybe_fruit = gets.chomp
    reaction(maybe_fruit) 
  rescue CoffeeError =>e
    puts e.message
    retry
  rescue NoFruitError =>e
    puts e.message
  end
end  

# PHASE 4
class BestFriend
  def initialize(name, yrs_known, fav_pastime)
    raise ArgumentError.new("'name' cannot be blank") if name.empty?
    raise ArgumentError.new("'favorite pastime' cannot be blank") if fav_pastime.empty? 
    raise ArgumentError.new("'years known' cannot be less than 5") if yrs_known < 5  
    @name = name
    @yrs_known = yrs_known
    @fav_pastime = fav_pastime
  end

  def talk_about_friendship
    puts "Wowza, we've been friends for #{@yrs_known}. Let's be friends for another #{1000 * @yrs_known}."
  end

  def do_friendstuff
    puts "Hey bestie, let's go #{@fav_pastime}. Wait, why don't you choose. 😄"
  end

  def give_friendship_bracelet
    puts "Hey bestie, I made you a friendship bracelet. It says my name, #{@name}, so you never forget me." 
  end
end

# br = BestFriend.new("peter", 7, "cooking")