def encrypt(secret_message)
  index = 0
  ##first_letter = secret_message[0]
  /# Do something to each letter of the text #/

  while index < secret_message.length
     /# figure out the index #/

    p secret_message[index]
         /# add one to each letter #/

    secret_message[index] = secret_message[index].next
             /# do that to each letter #/

    index +=1
  end
               /# put the first letter back around #/

  ##secret_message[-1] = first_letter
  return secret_message
end
encrypt("abc")

 def decrypt(secret_message)
  letter_index = 0
  alpha = "abcdefghijklmnopqrstuvwxyz"
  new_message = ""

  while letter_index < secret_message.length
     /# figure out the index #/
    if secret_message[letter_index]== " "
      p secret_message[letter_index]
    else
      p secret_message[letter_index]
      alpha_index = alpha.index(secret_message[letter_index])
      alpha_index = alpha_index - 1
      new_message += alpha[alpha_index]
      letter_index +=1

    end
  end
      puts "#{new_message}"
end
decrypt("abc")
