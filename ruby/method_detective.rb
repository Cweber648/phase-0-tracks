# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

("iNvEsTiGaTiOn").swapcase
# "iNvEsTiGaTiOn".<???>
# => “InVeStIgAtIoN”

("zom").insert(1,"o")
("zom").insert(2,"o")
# => “zoom”

 ("enhance").center(20)
# => "    enhance    "

("stop! your're under arrest!").upcase
# => "STOP! YOU’RE UNDER ARREST!"

("the usual").insert(9," suspects")
#=> "the usual suspects"

(" suspects").insert(0,"the usual")
# => "the usual suspects"

("The case of the disappearing last letter").chop
# => "The case of the disappearing last lette"

("The mystery of the missing first letter").delete("T")
# => "he mystery of the missing first letter"

 ("Elementary,    my   dear        Watson!").squeeze(' ').strip
# => "Elementary, my dear Watson!"

("z").ord
# => 122

# (What is the significance of the number 122 in relation to the character z?)
#Returns the Integer ordinal of a one-character string. MEANING it provides a postion. z's particular position is 122 because it is the 122 on the ASCII code table.

("How many times does the letter 'a' appear in this string?").count("a")
# =>