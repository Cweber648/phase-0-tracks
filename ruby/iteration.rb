# RELEASE 0 

def take_block
	puts "This method is taking a block"
	yield("x") 
end 

take_block {puts "Yes! this method is taking a block"}
take_block { |x| puts "This will take anything with a value of #{x}" }


#--------------------------------------------------
# RELEASE 1 
numbers = [1, 2, 3 , 4, 5]
spell_numbers = { 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four', 5 => 'five'}
 
# Testing .each on numbers array
puts "Original data:"
p numbers 

numbers.each do |number| 
	puts number
end 

puts "After .each call:"
p numbers 

# Testing .each on spell_numbers hash 
puts "Original data:"
p spell_numbers 

spell_numbers.each do |key, value| 
	puts "#{key} is spelled #{value}!"
end 

puts "After .each call:"
p spell_numbers 

# Testing .map! on numbers array
puts "Original data:"
p numbers 

numbers.map! do |number| 
	number + 1 
end 

puts "After .map! call:"
p numbers 

#--------------------------------------------------------
# RELEASE 2 
# ARRAY 
# Create a method  that iterates through items, deleting 
# any that meet the condition (array)
millennials = [1982, 1983, 1984, 1985, 1986, 1987, 1988, 1989, 1990, 1991, 1992]
millennials.delete_if {|year| year < 1990 }
puts "Deleting any years that are less than 1990:"
p millennials


# Create a method that filters a data structure for only items 
# that do satisfy a certain condition(array)
post_millennials = [1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006]
post_millennials.select! { |year| year > 1999 }
puts "Filter all the years that are more than 1999:"
p post_millennials

# Create a different method that filters a data structure for only items 
# satisfying a certain condition
baby_boomers = [1954, 1955, 1956, 1957, 1958, 1959, 1960, 1961, 1962, 1963, 1964]
baby_boomers.keep_if { |year| year > 1957 && year < 1963}
puts "Filter all the years that are between 1958 to 1962:"
p baby_boomers

# Create a method that will remove items from a data structure until the condition
# in the block evaluates to false, then stops (array)
generation_x = [1971, 1972, 1973, 1974, 1975, 1976, 1977, 1978, 1979, 1980, 1981]
generation_x.reject! {|year| year != 1981}
puts "Justin Timberlake was born in the year of:"
p generation_x

# HASH 
# Create a method that iterates through items, deleting 
# any that meet the condition (hash)
singers = {'Britney Spears' => 1981, 'Madonna' => 1958, 'Usher'=> 1978, 'Michael Jackson' => 1958, 'Amy Winehouse' => 1983}
singers.delete_if do |singer, birthyear| 
	birthyear > 1960
end 
puts "We definitely didn't grow up listening to:"
p singers

# Create a method that filters a data structure for only items 
# that do satisfy a certain condition(hash)
painters = {'Picasso' => 1881, 'Michelangolo' => 1475, 'Leonardo Da Vinchi' => 1452, 'Vincent Van Gogh' => 1853, 'Andy Warhol' => 1928} 
painters.select! do |painters, birthyear| 
	birthyear > 1400 && birthyear < 1500
end 
puts "We only want painters from the High Renaissance:"
p painters

# Create a different method that filters a data structure for only items 
# satisfying a certain condition (hash)
actors = {'Anna Kendrick' => 1985, 'Nicole Polizzi' => 1987, 'Jackie Chan' => 1954, 'Jet Li'=> 1963, 'Bruce Lee' => 1940}
actors.keep_if do |actors, birthyear|
	actors == "Jackie Chan" || actors == "Jet Li" || actors == "Bruce Lee"
end 
puts "Let's list all the Asian actors:"
p actors


# Create a method that will remove items from a data structure until the condition
# in the block evaluates to false, then stops (hash)
comedians = {'Bill Cosby' => 1937, 'Will Ferrell' => 1967, 'Joe Rogan' => 1967, 'David Chappelle' => 1973, 'Jimmy Fallon' => 1974}
comedians.reject! do |comedian, birthyear| 
	birthyear == 1937
end 
puts "We think Bill Cosby lived long enough, so let's reject him from the list:"
p comedians