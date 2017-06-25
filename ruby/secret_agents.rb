# encrypt
# - Loop through the string
#   - Use .next! method on the letter
def encrypt(string)
  for i in 0...string.length
    string[i] = string[i].next[0]
  end
  string
end

# print encrypt("string") 

# decrypt
# - Assign a variable to alphabet
# - Loop through the string
# 	- get the index of each letter and subtract 1
#   - assign string[i] to alphabet.index(index value from line 16)
# - Return string
def decrypt(string)
	alphabet = "abcdefghijklmnopqrstuvwxyz"
	for i in 0...string.length
		decrypt_index = alphabet.index(string[i]) - 1
		string[i] = alphabet[decrypt_index]
	end
	string
end


puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")
=begin
	
encrypt("abc") should return "bcd"
encrypt("zed") should return "afe"
decrypt("bcd") should return "abc"
decrypt("afe") should return "zed"
	
=end
