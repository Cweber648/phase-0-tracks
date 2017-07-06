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