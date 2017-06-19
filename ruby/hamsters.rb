puts "What is the hamsters name"
name = gets.chomp
puts "Hello #{name}, Glad to have you, What is your volume level"
volume = gets.chomp
puts "Thank you, your volume has been put as #{volume}"
puts "What is your fur color"
fur = gets.chomp
puts "are you a good candidate for adoption?"
answer = gets.chomp
puts "thank you for your response, how old are you?"
number = gets.chomp
 if number.empty?
 number = nil
  puts "you did not enter an age"
else
  puts "You are #{number} years old"
end



