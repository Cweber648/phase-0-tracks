
#def initialize
#What are we intializing at the start of this game.

#@guess_count = 0 (total guesses to start off are at 0)
#@is_over = false. The game is not over until all guesses are exausted.
#@word_count = what word we enter
#end

class WordGame

#attr_accessor variables

attr_accessor :word , :guess_count , :is_over , :word_array , :guess_word , :correct_letter, :word_length, :reused_letter

#def initialize
#What are we intializing at the start of this game.
#word and guess count, the game is not over.
#@guess_count = 0 (total guesses to start off are at 0)
#@is_over = false. The game is not over until all guesses are exausted.
#@word_count = what word we enter
#end
  def intialize(word)
    @word = word
    @guess_count = 0
    @is_over = false
    @correct_letter = 0
    @word_length = @word.length
    @word_array = "#{@word}".split('')
    @reused_letter = false
  end

#Write a method that will take the users word and then split it into characters to guess.
#input = user1 puts in a word
#output = the word replaced by - for its length

#Write a method
#input = letter and index
#we are setting if the user guesses the word correct, we want to find the index of that word in the array and replace it with the letter.
  def user_word(word)
    @guess_word = "#{word}".split('')
    @guess_word.map! do |replace_letter|
      replace_letter = '-'
    end
  end

#method for the user_guess
#input - when the user inputs a correct letter. we want to replace the "- " with the correct letter at the index of the "-"

  def user_guess(letter)
    index = 0
    while index < @word_length
      if @word_array[index] == letter
      if @guess_word[index] == "-"
         @guess_word[index] = letter
         @correct_letter = 1
      else
         @reused_letter = true
      end
      end
      index += 1
    end
  end

#Method needed for the correct guess
#input will be a letter.
# steps,  if the input is wrong we want to return Wrong. and have them input again
#if it is correct. we want to correct word to replace the -
#Method included for repeated guess.
#reused letter = true print another message
  def correct_guess
    if @reused_letter == true
      puts "You already guessed that letter"
      @reused_letter = false
    elsif @correct_letter == 0 && !is_over
      puts "Wrong!, try again"
    end
    if !is_over
      p guess_word.join("")
    end
    @correct_letter = 0
  end

#method for the repeated guess
  def guess_amount
    if @reused_letter == false
       @guess_count += 1
    end
  end

#method check to see if the full word has been guessed
#if false. We are going to say is_over = true
#steps- if statement if there are no more - in the word. the word was correctly guessed.
#output- printing message and word
  def correct_word
    if !@guess_word.index('-')
      @is_over = true
      puts "CONGRATS YOU GUESSED THE WORD, #{@word}"
    end
  end

#method to define when the game is over
#Steps- need and if statement, and is_over set to true
#when the word is guessed wrong. guesses are larger than the word length. puts "bad message"
  def game_over
    if @guess_count >= @word_length && !@is_over
      @is_over = true
      puts "You lost, I can't believe you couldn't guess a word as easy as #{@word.upcase}!!!"
    end
  end

end

game = WordGame.new
puts "Welcome to the letter game"
puts "User 1 enter a word for User 2 to guess"
word = gets.chomp
game.intialize(word)
game.user_word(word)

while !game.is_over
  puts "Guess A Letter"
  guess_letter = gets.chomp
  game.user_guess(guess_letter)
  game.correct_word
  game.guess_amount
  game.game_over
  game.correct_guess
end




