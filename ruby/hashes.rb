p "Interior Designer Client Form"
# We want to allow a designer to enter details about a client,
#name, Age, Number of kids, decor theme
puts "What is your name?"
 name = gets.chomp

p "What is your Age (if you dont mind me asking)"
 age = gets.chomp.to_i

puts "How many kids do you have?"
 kids = gets.chomp.to_i

puts "What is your preffered decor theme"
 decor_theme = gets.chomp
#include all variables that are being asked
client_form = {
  :name => "#{name}",
  :age => "#{age}",
  :number_kids => "#{kids}",
  :decor_theme => "#{decor_theme}",
}

#have user prompt a change. Do? How to make the program recognize that a user wants to change a key. Making an if else statement. That way it will only go through one time. did not need to blank array.

puts "Did you want to update?( please type name , age , kids , decor or skip)"
 update = gets.chomp



  #print a new updated theme
 p client_form[:decor_theme] = "#{decor_theme}"

puts "here is your updated client-form"
 p client_form
