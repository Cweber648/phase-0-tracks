#first name Quentin
# last name Campbell


#Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

name = "quentin campbell".split.reverse.join(" ")
#make it change all the vowels to the next one
#Felicia Torres" will become "Vussit Gimodoe",

#after we want to get user input to do the same thing.
vowels = [
    'a','e','i','o','u'
 ]
 consonant = [
  'b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','x',
 ]
 # want. identify each vowel in the name. and change to next vowel

name_character = name.chars

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

