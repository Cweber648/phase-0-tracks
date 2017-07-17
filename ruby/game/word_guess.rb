class WordGuess

  attr_reader :word
  attr_accessor :chances, :secret_word

  def initialize(word)
  	@word = word.upcase.split("")
  	@secret_word = Array.new(word.length, "_")
  	@chances = word.length
  end

  def update_secret_word(letter)
  	@secret_word[@word.index(letter)] = letter if @word.index(letter)
  end

  def guess(string)
  	# input can be a letter or a word
  	input = string.upcase
  	input_length = input.length
  	if input_length == @word.length
  		@chances -= 1
  		self.message_win if input == @word.join("")
  	elsif input_length == 1
  		if !@secret_word.index(input)
  			update_secret_word(input)
  			@chances -= 1
  		end
  	else
  		@chances -= 1
  	end
  end

  def complete?
  	@chances == 0 || @word == @secret_word
  end

  def message_win
  	"Congratulations! You win!"
  end

  def message_lose
  	"You suck!"
  end

end 

def game_UI
	puts "Player 1: Enter a word for player 2"
	word = gets.chomp
	word_guess = WordGuess.new(word)
	while !word_guess.complete?
		puts "Enter a letter to guess or guess the word | #{word_guess.secret_word.join("")} | #{word_guess.chances} remaining."
		status = word_guess.guess(gets.chomp)
		if status.is_a? String
			puts status
			break
		elsif status == 0
			puts word_guess.message_lose 
		end
	end
end

#Start
game_UI
