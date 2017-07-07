# Release 2: Use Hash in a Program


# Write a program that will allow an interior designer to enter the details of a given client:
#  the client's name => string
#  age => number
#  number of children => number
#  decor theme => string
#  and so on:
#   Some Questions from this article on this website.
#     12 Questions Your Interior Desinger Should Ask You 
#     https://www.houzz.com/ideabooks/29616201/list/12-questions-your-interior-designer-should-ask-you
#   What colors do you love?
#   What colors do you hate?
#   Are there any special needs that should be considered?
#   What's your budget?
###############################################################################################

# Prompt for all inputs
#   Convert inputs to appropriate data type
# Print hash
# Prompt for any updates, "none" to skip
# Print hash

###############################################################################################


# define methods to validate user input
def validate_number_input(user_input)
  
end

def validate_boolean_input(user_input)

end

# Create arrays for lists
loved_colors = []
hated_colors = []
special_needs = []

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

# Prompt for user input
#   Ask for the name
puts "What is your client's name?"
name_input = gets.chomp

#   Ask for the age
#     if user input isn't a number, keep asking until input is a number
puts "What is your client's age?"

#   Ask for number of children
#     if user input isn't a number, keep asking until input is a number
puts "How many childrens your client have?" 

#   Ask for decor theme
puts "Does your client have any decor theme in mind?"

#   Ask for preferred colors
puts "What colors does your client love?"

#   Ask for hated colors
puts "What colors does your client hate?"

#   Ask for special needs
puts "Does your client have any special needs?"

#   Ask for budget
puts "What is your client's budget"
