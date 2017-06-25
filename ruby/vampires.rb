# Process Multiple Employees
puts "How many employees would be processed?"
employees = gets.chomp

# Interview
puts 'What is your name?'
name = gets.chomp
puts 'How old are you?'
age = gets.chomp
puts 'What year were you born?'
birth_year = gets.chomp
puts 'Our company cafeteria serves garlic bread. Sholud we order some for you? Yes or no.'
likes_garlic = gets.chomp
puts "Would you like to enroll in the company's health insurance? Yes or no"
wants_health_insurance = gets.chomp

# Detection
=begin
check_age = validate_age(age, birth_year)
if (check_age && likes_garlic)
	puts “Probably not a vampire.”
elsif (!check_age && (!likes_garlic || !wants_health_insurance)
	puts “Probably a vampire.”
elsif (!check_age && !likes_garlic && !wants_health_insurance)
	puts “Almost certainly a vampire.”
elsif (name == 'drake cula' || name == 'tu fang')
	puts “Definitely a vampire.”
else
	puts “Results inconclusive.”
end
=end