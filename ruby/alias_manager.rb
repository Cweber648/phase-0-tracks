#first name Quentin
# last name Campbell


#Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.
#
#user input
#make it change all the vowels to the next one
#Felicia Torres" will become "Vussit Gimodoe",
 # want. identify each vowel in the name. and change to next vowel
#name = gets.chomp.split.reverse.join(" ")

#after we want to get user input to do the same thing. Quit to end
puts "put a name, type 'quit' to end"

#make it change all the vowels to the next one
#Felicia Torres" will become "Vussit Gimodoe",
vowels = [
    'a','e','i','o','u'
 ]
 consonant = [
  'b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z'
 ]
 vowels_upcase = ['A', 'E','I','O', 'U'
 ]

 #consonant_upcase = ['B','C','D','F','G','H','J','K','L','M','N','P','Q','R'
 #,'S','T','V','W','X','Y','Z']
 #set blank arrays. We want to add names and the updated names to the arrays so we can store and print them later.
 name_array = []
 alternate_array = []
 name = "test"
#Set name = to something so we can set parameters
 # want. identify each vowel in the name. and change to next vowel
#name = gets.chomp.split.reverse.join(" ")

until "#{name}" == "quit"
  #set a loop. We want the loop to stop when the user puts in quit.
name = gets.chomp
name_flip = name.split.reverse.join(" ")
name_character = name_flip.chars
#setting the name = to what we want it to do
counter = 1

name_character.map! do |character_next|
if character_next == " "
    #if the next character == a space set character_next = "   "
    character_next = " "
#if the character is a vowel we want to print the next vowel.
elsif vowels.index(character_next)
    vowel_position = vowels.index(character_next)
    if character_next == vowels[-1]
      vowel_position = 0
      #if the vowel is a U we want to set the position back to 0
    else
      vowel_position += 1

    end
    character_next = vowels[vowel_position]

elsif vowels_upcase.index(character_next)
     vowels_upcase_position = vowels_upcase.index(character_next)
     if character_next == vowels_upcase[-1]
       vowels_upcase_position = 0
     else
       vowels_upcase_position += 1
     end
     character_next = vowels_upcase[vowels_upcase_position]

elsif consonant.index(character_next)
    consonant_position = consonant.index(character_next)
    if character_next == consonant[-1]
      consonant_position = 0
      #if the letter is a z we want to send it back to 0
    else
      consonant_position += 1
    end
    character_next = consonant[consonant_position]

else
    character_next = character_next.downcase
    consonant_position = consonant.index(character_next)
    if character_next == consonant[-1]
      consonant_position = 0
    else
      consonant_position += 1
    end
    character_next = consonant[consonant_position].upcase
    #had trouble getting the consonant upcase to get it to work. Hardcoded if it wasnt able to recognize it has to be an upper case consonant
end
end
  counter += 1
  p name_character.join('')
  p "another name"
  name_array.push "#{name}"
  alternate_array.push name_character.join('')

end

name_position = 0
name_length = name_array.length - 1
#we dont want quit to be in our array. We always want it to lose the last one of the array because it is quit.
name_length.times { |name_position| puts "#{name_array[name_position]} is also known as #{alternate_array[name_position]}"}
#block to make it call on each variable and print which one it associates with.


#if the next character is a capital vowel put the next vowel.upcase
# if the next character is a capital consonant put the next consonant.up

