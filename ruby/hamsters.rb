puts "What is your hamster's name?"
hamster_name = gets.chomp
puts 'How loud is your hamster, on a scale from 1-10?'
volume_level = gets.chomp.to_i
puts "What is the color of your hamster's fur?"
fur_color = gets.chomp
puts 'Would you consider your hamster a good candidate for adoption? True or false.'
good_candidate = gets.chomp.downcase
if good_candidate == 'true'
  good_candidate = true
elsif good_candidate == 'false'
  good_candidate = false
else
  good_candidate = nil
end
puts 'How old would you say your hamster is in years?'
est_age = gets.chomp
if est_age == ''
  est_age = nil
else
  est_age = est_age.to_i
end
# Print to console
puts "My hamster is #{hamster_name}."
puts "On a scale from 1-10, Loudness of #{hamster_name} is #{volume_level}." if volume_level > 0
puts "#{hamster_name} has #{fur_color} fur."
if good_candidate
  puts "#{hamster_name} is good candidate for adoption."
else
  puts "#{hamster_name} is not good candidate for adoption."
end
puts "#{hamster_name} is #{est_age} years old." if est_age > 0
