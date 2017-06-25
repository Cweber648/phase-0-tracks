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

for i in 1..employees
	# Interview
	puts 'What is your name?'
	name = gets.chomp.downcase
	puts 'How old are you?'
	age = gets.chomp.to_i
	puts 'What year were you born?'
	birth_year = gets.chomp.to_i
	puts 'Our company cafeteria serves garlic bread. Sholud we order some for you? Yes or no.'
	likes_garlic = gets.chomp.downcase
	likes_garlic = input_to_boolean(likes_garlic)
	puts "Would you like to enroll in the company's health insurance? Yes or no"
	wants_health_insurance = gets.chomp.downcase
	wants_health_insurance = input_to_boolean(wants_health_insurance)

	# Check for Suspicious Allergies
	puts "Do you have any allergies?"
	allergy = gets.chomp.downcase
	puts "Probably a vampire" if allergy == "sunshine"
	while (allergy != "sunshine" && allergy != "done")
		puts "any other allergies? If you don't have any other, type 'done'"
		allergy = gets.chomp
		puts "Probably a vampire" if allergy == "sunshine"
	end

	if allergy != "sunshine"
		# Detection
		check_age = match_age(age, birth_year)
		if (name == 'drake cula' || name == 'tu fang')
			puts 'Definitely a vampire.'
		elsif (!check_age && !likes_garlic && !wants_health_insurance)
			puts 'Almost certainly a vampire.'
		elsif (!check_age && (!likes_garlic || !wants_health_insurance))
			puts 'Probably a vampire.'
		elsif (check_age && likes_garlic)
			puts 'Probably not a vampire.'
		else
			puts 'Results inconclusive.'
		end
	end
end

# Plot Twist
puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."