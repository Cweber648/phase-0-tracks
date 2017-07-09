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

def validate_age(user_input)
	# Check if age is between 15 - 100
	age = user_input.to_i
	(validate_number_input(user_input) && age >= 15 && age <= 100)
end

def validate_budget(user_input)
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
	puts "What is your client's age?"
end

def get_children_count
	#   Ask for number of children
	#     if user input isn't a number, keep asking until input is a number
	puts "How many childrens your client have?" 
end

def get_decor_theme
	#   Ask for decor theme
	puts "Does your client have any decor theme in mind?"
end

def get_list(key)
	# Create array for the list
	list = []
=begin
	#   Ask for preferred colors
	puts "What colors does your client love?"
	#   Ask for hated colors
	puts "What colors does your client hate?"
	#   Ask for special needs
	puts "Does your client have any special needs?"
=end

end

def get_budget
	#   Ask for budget
	puts "What is your client's budget"
end

###############################################################################################
# Define create client profile method
###############################################################################################
def create_client_profile(hash)
	# Prompt for input

	# Print Hash
end

###############################################################################################
# Define update client profile method
###############################################################################################
def update_client_profile(hash)
	# Update a key if user wants
	#   if any value is blank, print corresponding key in red.
	#   if not, green.
	## Ask for update
	## Print keys
	## Ask for new value

	# Print updated Hash
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
# Lists
	# Colors
color_list = []
	# Special needs
special_needs_list = []

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