# Release 2
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

# Release 3
=begin
encrypt("abc") should return "bcd"
encrypt("zed") should return "afe"
decrypt("bcd") should return "abc"
decrypt("afe") should return "zed"

puts encrypt("abc")
puts encrypt("zed")
puts decrypt("bcd")
puts decrypt("afe")
=end

# Release 4
# puts decrypt(encrypt("swordfish"))
=begin
	Comment:
	The encrypt method runs first returning "txpsegjti" and the decrypt method runs returning "swordfish".
=end

# Driver Code
puts "Would you like to decrypt or encrypt a password?"
password_cryption = gets.chomp
puts "What password would you like to #{password_cryption}?"
password = gets.chomp

if password_cryption == "encrypt"
  password = encrypt(password)
elsif password_cryption == "decrypt"
  password = decrypt(password)
end

puts "Your #{password_cryption}ed password is #{password}"