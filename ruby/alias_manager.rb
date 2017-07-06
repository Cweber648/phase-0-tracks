#make a fake name. Quentin Campbell
# swap first and last name


"(Quentin Campbell)".split.reverse

#if the string contains a vowel we want to P the next vowel
#if the string contains a consonant we want to P the next consonant

name = "quentin campbell".split.reverse.join(" ")
#make it change all the vowels to the next one

vowels = [
    'a','e','i','o','u'
 ]
 consonant = [
  'b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','u','v','x',
 ]
 # want. identify each vowel in the name. and change to next vowel

name_character = name.chars

#make the vowels run through each letter of the name
name_character.map! do |character_next|
  if character_next == " "
    character_next = " "
    #account for the space between the names
  elsif vowels.index(character_next)
    vowel_position = vowels.index(character_next)
    if character_next == vowels[-1]
      vowel_position = 0
      #if vowel is = index last we want it to loop back to the first letter of the vowels
    else
      vowel_position += 1
    end
    character_next = vowels[vowel_position]
  end
end
p name_character.join('')

#put each consonant change and vowel change together.