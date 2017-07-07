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
#  Are there any special needs that should be considered? => array || boolean
#  What's your budget? => number
###############################################################################################

###############################################################################################
# Define helper methods
###############################################################################################
# Colorize String methods
def colorize(color,string)
	case color
	when "red"
		color = 31
	when "green"
		color = 32
	when "blue"	
		color = 34
	end

  "\033[#{color}m#{string}\033[0m"
end


# Validation methods
def validate_full_name(user_input)

end

def validate_number_input(user_input)
  
end

def validate_boolean_input(user_input)

end

# 

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
# Define client profile method
###############################################################################################
def client_profile(hash)
	# Prompt for input

	# Print Hash
end

###############################################################################################
# Define update method
###############################################################################################
def update_profile(hash)
	# Update a key if user wants
	#   if any value is blank, print corresponding key in red.
	#   if not, green.
	## Ask for update
	## Print keys
	## Ask for new value

	# Print updated Hash
	p design_details
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
  colors_loved: nil,
  colors_hated: nil,
  special_needs: nil,
  budget: nil 
}

###############################################################################################
###############################################################################################
# End
###############################################################################################
###############################################################################################

###############################################################################################
# Sources
###############################################################################################
# Changing the color of printed string on console
# => https://stackoverflow.com/questions/1108767/terminal-color-in-ruby
###############################################################################################
###############################################################################################