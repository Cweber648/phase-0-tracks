class WordGuess
  
  def initialize

  end

  def create_word_phrase(word_phrase)
    letters = word_phrase.split("")
    { word_phrase: letters, 
      secret: Array.new(word_phrase.length, "_")
    }
  end
end 

#DRIVER CODE
word_guess = WordGuess.new
p word_guess.create_word_phrase('word')
