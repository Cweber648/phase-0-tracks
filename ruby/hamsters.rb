puts "What is the hamsters name"
  name = gets.chomp
puts "Hello #{name}, Glad to have you, What is your volume level"
  volume = gets.chomp.to_i
puts "Thank you, your volume has been put as #{volume}"
puts "What is your fur color"
  fur = gets.chomp
puts "Wow, #{fur} is a great color! are you a good candidate for adoption?"
  answer = gets.chomp
    if answer == "yes"
      answer = true
    elsif answer == "no"
      answer = false
     end
puts "thank you for your response, It is #{answer} that you want to be adopted. How old are you?"
  number = gets.chomp
    if number.empty?
      number = nil
     puts "you did not enter an age"
    else
      number.to_i
     puts "You are #{number} years old"
    end



