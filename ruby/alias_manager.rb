# Release 0
# Write a method that takes a spy's real name and creates a fake name with it by doing the following:
# 1. Swapping the fist and last name.
# 2. Changing all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou', and all of the consonants (everything else besides the vowels) to the next consonant in the alphabet. So 'a' would become 'e', 'u' would become 'a', and 'd' would become 'f'.

def alias_generator(full_name)
  vowels = ['a','e','i','o','u']
  consonants = ['b','c','d','f','g','h','j','k','l','m','n','p','q','r','s','t','v','w','x','y','z']
  name = full_name.downcase.split(" ").reverse
  name.map! do |n|
    n.split("").map! do |charactors|
      i = vowels.index(charactors)
      j = consonants.index(charactors)
      if i
        i = (i == 4) ? 0 : i + 1
        vowels[i]
      else
        j = (j == 20) ? 0 : j + 1
        consonants[j]
      end
    end
  end
  name.map! do |n|
    n.join("").capitalize
  end
  name.join(" ")
end

# Release 1
# Provide a user interface that lets a user enter a name and get a fake name back. Let the user do this repeatedly until they decide to quit by typing 'quit'. (They might just hit Enter to continue.)
# Release 2
# Use a data structure to store the fake names as they are entered. When the user exits the program, iterate through the data structure and print all of the data the user entered. A sentence like "Vussit Gimodoe is actually Felicia Torres" or "Felicia Torres is also known as Vussit Gimodoe" for each agent is fine.

# Validate full name
def validate_full_name(user_input)
  
end
def alias_generator_UI
  
end
