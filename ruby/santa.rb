class Santa
  attr_reader :ethnicity, :gender, :age
  attr_accessor :gender , :ethnicity, :age

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance ..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(type_of_cookie)
    @type_of_cookie = type_of_cookie
    puts "That was a good #{type_of_cookie}!"
  end

  def celebrate_birthday
    @age = @age + 1
  end

#delete_at, insert find the index that is passed in. .ind
  def get_mad_at(reindeer)
    i = @reindeer_ranking.index(reindeer)
    r = @reindeer_ranking.delete_at(i)
    @reindeer_ranking << reindeer
  end
end

santa_con = Santa.new("Male","Klingon")
p santa_con

santa_con.get_mad_at("Rudolph")
p santa_con


puts "What Does SANTA!! Say??"
santa_con.speak

puts "You are a #{santa_con.gender}, #{santa_con.ethnicity}, Pleasure to have you here."

santa_con.ethnicity = "We are just Klingons"
puts "#{santa_con.ethnicity}"

santa_con.gender = "We actually dont have genders, Just Klingons"
puts "#{santa_con.gender}"

santas = []

genders = ["Female", "Male", "bigender","gender fluid","Agender", "genderless","Non-Binary",]

ethnicities = ["Bajoran", "Betazoid","Cardassian", "Ferengi‎" "hybrid","Klingon", "Romulan", "Vulcan", "Swarm", "Andorians","Tholian",""]

# santa_new = Santa.new(@gender,@ethnicity)
# santa_new.gender = genders.sample
# santa_new.ethnicity = ethnicities.sample
# santa_new.age = rand 0..140
# puts "We have a #{santa_new.age} #{santa_new.gender} #{santa_new.ethnicity} Santa"

 10.times do
   santas << Santa.new(@gender,@ethnicity)
 end
 santas.each do |gender, ethnicity|
    gender = genders.sample
    ethnicity = ethnicities.sample
    age = rand 0..140
   puts "We have a #{age} #{gender} #{ethnicity} Santa"
 end
# genders.length.times do |i|
#   santas << Santa.new(genders[i], ethnicities[i])
# end
