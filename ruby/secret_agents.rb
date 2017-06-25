# encrypt
# - Loop through the string
#   - Use .next! method on the letter
def encrypt(string)
  for i in 0...string.length
    string[i] = string[i].next
  end
  string
end

print encrypt("string") 
