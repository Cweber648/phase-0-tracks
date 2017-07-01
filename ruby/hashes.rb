p "Interior Designer Client Form"
# We want to allow a designer to enter details about a client,
#name, Age, Number of kids, decor theme
puts "What is your name?"
 name = gets.chomp

p "What is your Age (if you dont mind me asking)"
 age = gets.chomp

puts "How many kids do you have?"
 kids = gets.chomp

puts "What is your preffered decor theme"
 theme = gets.chomp


client_form = {
  :name => "Charlie",
  :age => "27",
  :number_kids => "none",
  :decor_theme => "Rustic Cowboy"
}
 p client_form[:name] =  "Charlie"
 p client_form[:age] =  "28"
 p client_form[:number_kids] = "none"
 p client_form[:theme] = "Rustic Cowboy"
