class Santa
  attr_reader :ethnicity, :gender
  attr_accessor :gender , :ethnicity
  att

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

   def ethnicity=(new_ethnicity)
    @ethnicity = new_ethnicity
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def gender
    @gender
  end

  def ethnicity
    @ethnicity
  end

end

santa_con = Santa.new("Male","Klingon")
p santa_con

santa_con.get_mad_at("Rudolph")
p santa_con


puts "What Does SANTA!! Say??"
santa_con.speak

santas = []

genders = ["Female", "Male", "bigender","gender fluid", "N/A"]

ethnicities = ["white", "African-American", "Latino","Asian", "Klingon","N/A"]

genders.length.times do |i|
  santas << Santa.new(genders[i], ethnicities[i])
end

puts "You are a #{santa_con.gender}, #{santa_con.ethnicity}, Pleasure to have you here."

santa_con.ethnicity = "We are just Klingons"
puts "#{santa_con.ethnicity}"

santa_con.gender = "We actually dont have genders, Just Klingons"
puts "#{santa_con.gender}"