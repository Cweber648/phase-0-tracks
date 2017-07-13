# class Puppy

#   def initialize
#     puts "Initializing new puppy instance ..."
#   end

#   def fetch(toy)
#     @toy = toy
#     puts "I brought back the #{@toy}!"
#     toy
#   end

#   def speak(bark_times)
#     puts "Woof!" *(bark_times)
#   end

#   def roll_over
#     puts "roll over"
#   end

#   def dog_years(years)
#     dog_years = 0
#     @dog_years = dog_years
#     @dog_years = years * 7
#     puts "your dog is #{@dog_years}"
#   end

#   def sit
#     puts "good boy"
#   end



# end
# puppy1 = Puppy.new
# puppy1.fetch('ball')
# puppy1.speak(5)
# puppy1.roll_over
# puppy1.dog_years(5)
# puppy1.sit


class Cats
  def initialize
    puts "They will scratch you"
  end

  def number_scratches(scratches)
    puts "Ouch" * scratches
  end

  def birthday
    @age = 0
    @age = @age + 1
    puts "Happy Birthday you are now #{@age}"
  end
end

@cat_names = []
def name_creator
  @named = ""
  @named << @@rl.sample
  @named << rand(1..50).to_s
end

def save_name
  @cat_names << @named
end

def instance_creator
  @cat_names.each do |cat_name|
  cat_name = Cats.new
  cat_names << cat_name
  p cat_names
end
end
p cat_names2
# cat1.number_scratches(20)
# cat1.birthday
p 2.birthday



#   def instance_creator(total_cats)
#     cat_instances = []
#     until cat_instances.length == total_cats
#     new_name = @name.succ
#     cat_instances << new_name
#   end
# end
