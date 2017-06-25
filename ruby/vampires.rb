# Methods

# Validates is input for number
def validate_number(number)
	(number != 0)
end

# Changes yes or no to true or false
def input_to_boolean(string)
	if string == "yes"
		true
	elsif string == "no"
		false
	else
		nil
	end
end

# Checks age input and birth_year input match
def match_age(age, birth_year)
	year = Time.new.year
	calculated_age = year - birth_year
	if (age == calculated_age || age == calculated_age -1)
		true
	else
		false
	end
end

# Process Multiple Employees
puts "How many employees would be processed?"
employees = gets.chomp.to_i

# Interview
puts 'What is your name?'
name = gets.chomp
puts 'How old are you?'
age = gets.chomp.to_i
puts 'What year were you born?'
birth_year = gets.chomp.to_i
puts 'Our company cafeteria serves garlic bread. Sholud we order some for you? Yes or no.'
likes_garlic = gets.chomp
puts "Would you like to enroll in the company's health insurance? Yes or no"
wants_health_insurance = gets.chomp

# Detection
check_age = match_age(age, birth_year)
if (check_age && likes_garlic)
	puts 'Probably not a vampire.'
elsif (!check_age && (!likes_garlic || !wants_health_insurance))
	puts 'Probably a vampire.'
elsif (!check_age && !likes_garlic && !wants_health_insurance)
	puts 'Almost certainly a vampire.'
elsif (name == 'drake cula' || name == 'tu fang')
	puts 'Definitely a vampire.'
else
	puts 'Results inconclusive.'
end