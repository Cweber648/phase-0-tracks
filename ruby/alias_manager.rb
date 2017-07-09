#first name Quentin
# last name Campbell


#Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.
#
#user input
#make it change all the vowels to the next one
#Felicia Torres" will become "Vussit Gimodoe",
 # want. identify each vowel in the name. and change to next vowel
#name = gets.chomp.split.reverse.join(" ")

#after we want to get user input to do the same thing.
vowels = [
    'a','e','i','o','u'
 ]

 consonant = [
  'b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','x',
 ]

  vowels_upcase = ['A', 'E','I','O', 'U'
 ]

 #consonant_upcase = ['B','C','D','F','G','H','J','K','L','M','N','P','Q','R'
 #,'S','T','V','W','X','Y','Z']

 name_array = []
 alternate_array = []
 name = "test"
 #created two blank arrays. one is for the users real name input, next array is for the output after the method. set name == to something

 # want. identify each vowel in the name. and change to next vowel

#name = gets.chomp.split.reverse.join(" ")
 # want. identify each vowel in the name. and change to next vowel

name_character = name.chars

until "#{name}" == "quit"
name = gets.chomp

name_flip = name.split.reverse.join(" ")

name_character = name_flip.chars

counter = 1

#make until loop. We want the loop to go through the method x amount of times until the user puts Quit

name_character.map! do |character_next|
  if character_next == " "
    #if the next character == a space set character_next = "   "
    character_next = " "
  elsif vowels.index(character_next)
    vowel_position = vowels.index(character_next)
    if character_next == vowels[-1]
      vowel_position = 0
    else
      vowel_position += 1
    end
    character_next = vowels[vowel_position]
  else
    consonant_position = consonant.index(character_next)
    if character_next == consonant[-1]
      consonant_position = 0
    else
      consonant_position += 1
    end
    character_next = consonant[consonant_position]
  end
end
p name_character.join('')

