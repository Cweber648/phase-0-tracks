# We want to allow a designer to enter details about a client,
#name, Age, Number of kids, decor theme

p "Interior Designer Client Form"

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

if update == "name"
     puts "Update here:"
     client_form[:name] = gets.chomp

elsif update == "age"
     puts "Update Here:"
     client_form[:age] = gets.chomp

elsif update == "kids"
    puts "Update Here:"
    client_form[:number_kids] = gets.chomp

elsif update == "decor"
    puts "Update Here:"
    client_form[:decor_theme] = gets.chomp

elsif update == "skip"
    p client_form
end

puts "Here is your updated client-form"
 p client_form
