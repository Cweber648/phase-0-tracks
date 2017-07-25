# module Shout
#   def self.yell_angrily(words)
#     words = words + "!!!" + ":)"
#     p words
#   end

#   def self.yell_happily(words)
#     words = words + "!!!" + ":)"
#     p words
#   end
# end

# Shout.yell_angrily("IM SO ANGRY")
# Shout.yell_happily("IM SO HAPPY")

# module Flight
#   def take_off(altitude)
#     puts "Taking off and ascending until reaching #{altitude} ..."
#   end
# end
# class Bird
#   include Flight
# end

# class Plane
#   include Flight
# end

# bird = Bird.new
# bird.take_off(800)

# plane = Plane.new
# plane.take_off(30000)

module Shout
  def shouting(bad_things)
    puts "I can't believe i got another #{bad_things}"
  end
end

class Tickets
  include Shout
end

class Rotten_fruit
  include Shout
end

tickets = Tickets.new
tickets.shouting("Parking Ticket")

rotten_fruit = Rotten_fruit.new
rotten_fruit.shouting("Rotten Orange")


