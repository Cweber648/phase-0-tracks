###############################################################################################
# Release 2: Use Hash in a Program
###############################################################################################
# Write a program that will allow an interior designer to enter the details of a given client:
#  the client's name => string
#  age => number
#  number of children => number
#  decor theme => string
#  What colors do you love? => array
#  What colors do you hate? => array
#  Are there any special needs that should be considered? => array
#  What's your budget? => number
###############################################################################################

###############################################################################################
# Define helper methods
###############################################################################################
# Validation methods
def validate_number_input(string)
  # Check if user_input is a number
  string == string.to_i.to_s ? true : false
end

def validate_boolean_input(string)
	input = string.downcase
	if input == "yes"
	  true
	elsif input == "no"
	  false
	end
end

def validate_zero_and_up(user_input)
	# Check if budget is more than or equal to 0
	budget = user_input.to_i
	(validate_number_input(user_input) && budget >= 0)
end

###############################################################################################
# Define user input prompt methods
###############################################################################################

def get_name
	#   Ask for the name
	puts "What is your client's name?"
	name_input = gets.chomp
end

def get_age
	#   Ask for the age
	#     if user input isn't a number, keep asking until input is a number
	begin
		puts "What is your client's age? (Value must be bigger than or equal to 0)"
		age_input = gets.chomp
	end until validate_zero_and_up(age_input)
	age_input.to_i
end

def get_children_count
	#   Ask for number of children
	#     if user input isn't a number, keep asking until input is a number
	begin
		puts "How many childrens your client have? (Value must be bigger than or equal to 0)"
		count_input = gets.chomp
	end until validate_zero_and_up(count_input)
	count_input.to_i
end

def get_decor_theme
	#   Ask for decor theme
	puts "Does your client have any decor theme in mind?"
	theme_input = gets.chomp
	theme_input
end

def get_list(key)
	# Create array for the list
	list = []
	if key == "loved_colors" || key == "hated_colors"
		preference = (key == "loved_colors") ? "love" : "hate"
		puts "What colors does your client #{preference}? Type 'none' if there is none"
		color_input = gets.chomp
		while color_input != "none" && color_input != "done"
			list.push(color_input)
			puts "Any other color? Type 'none' or 'done' if you are done"
			color_input = gets.chomp
		end
	elsif key == "special_needs"
		puts "Are there any special needs that should be considered? Type 'none' if there is none"
		needs_input = gets.chomp
		while needs_input != "none" && needs_input != "done"
			list.push(needs_input)
			puts "Any other special needs? Type 'none' or 'done' if you are done"
			needs_input = gets.chomp
		end
	end
	(list.length != 0) ? list : nil
end

def get_budget
	#   Ask for budget
	begin
		puts "What is your client's budget? (Value must be bigger than or equal to 0)"
		budget_input = gets.chomp
	end until validate_zero_and_up(budget_input)
	budget_input.to_i
end

###############################################################################################
# Define create client profile method
###############################################################################################
def create_client_profile(hash)
	# Prompt for input
	client_profile = hash
	client_profile[:name] = get_name
	client_profile[:age] = get_age
	client_profile[:children_count] = get_children_count
	client_profile[:decor_theme] = get_decor_theme
	client_profile[:loved_colors] = get_list("loved_colors")
	client_profile[:hated_colors] = get_list("hated_colors")
	client_profile[:special_needs] = get_list("special_needs")
	client_profile[:budget] = get_budget
	# Print & return Hash
	puts "New client profile"
	puts "########################"
	client_profile.each do |key, value|
		puts "##{key}: #{value}"
	end
end

###############################################################################################
# Define update client profile method
###############################################################################################
def update_client_profile(hash)
	# Update a key if user wants
	## Ask for update
	## Print keys
	## Ask for new value
	client_profile = hash
	puts "Is there anything you want to update? Enter a key"
	key = gets.chomp
	case key
	when "name"
		client_profile[:name] = get_name
	when "age"
		client_profile[:age] = get_age
	when "children_count"
		client_profile[:children_count] = get_children_count
	when "decor_theme"
		client_profile[:decor_theme] = get_decor_theme
	when "loved_colors"
		client_profile[:loved_colors] = get_list("loved_colors")
	when "hated_colors"
		client_profile[:hated_colors] = get_list("hated_colors")
	when "special_needs"
		client_profile[:special_needs] = get_list("special_needs")
	when "budget"
		client_profile[:budget] = get_budget
	else
		puts ":#{key} doesn't exist in the hash"
		update_client_profile(client_profile)
	end
	# Print updated Hash
	puts "Updated client_profile"
	puts "########################"
	client_profile.each do |key, value|
		puts "##{key}: #{value}"
	end
end	

###############################################################################################
###############################################################################################	
# Start the Program
###############################################################################################
###############################################################################################

# Initialize Hash
design_details = {
  name: nil,
  age: nil,
  children_count: nil,
  decor_theme: nil,
  loved_colors: nil,
  hated_colors: nil,
  special_needs: nil,
  budget: nil 
}
design_details = create_client_profile(design_details)
design_details = update_client_profile(design_details)


###############################################################################################
###############################################################################################
# End
###############################################################################################
###############################################################################################

###############################################################################################
# Sources
###############################################################################################
# CSS Colors
# => https://www.w3schools.com/cssref/css_colors.asp
# Lists of special needs
# => http://aspirepeople.co.uk/special-needs/different-types-of-special-needs/
###############################################################################################
###############################################################################################