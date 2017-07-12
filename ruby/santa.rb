class Santa
  
  attr_reader :age, :ethnicity
  attr_accessor :gender
  def initialize(gender, ethnicity, age = 0)
    #puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = age
  end
  
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie_type)
    puts "That was a good #{cookie_type}"
  end
  
  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(name)
    @reindeer_ranking << @reindeer_ranking.delete_at(@reindeer_ranking.index(name))
  end

end

# DRIVER CODE
# Release 0
#santa = Santa.new
#santa.speak
#santa.eat_milk_and_cookies("raison cookie")
# Release 1
#santas = []
#example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
#example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
#example_genders.length.times do |i|
#  santas << Santa.new(example_genders[i], example_ethnicities[i])
#end
#santas.each do |santa|
#  santa.speak
#end
# Release 2 & 3
#santa = Santa.new("male", "white", 68)
#santa.celebrate_birthday
#puts santa.age
#puts santa.ethnicity
#p santa.gender = "agender"
#p santa.get_mad_at("Dasher")

# Release 4: Build Many, Many Santas

# Random gender, ethnicity, and age 
def random_santa
  age = Random.new
  example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
  example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
  [example_genders.sample, example_ethnicities.sample, age.rand(140)]
end

# Create 100 Santas
100.times do |i|
  arg = random_santa
  santa = Santa.new(arg[0], arg[1], arg[2])
  puts "#{i + 1}: #{santa.age} years old, #{santa.ethnicity}, #{santa.gender} santa"
end
