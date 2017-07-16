#Class (for our cup game) designed for a computer program
#we want our driver code to be able to handle user input
#gets.chomp

#user enters a word and another user attempts to guess the word.
#guesses are limited. Number of guess = the lenght of the word
#The guessing player receives continual feedback on the current word. word is chocolate user guess as C it brings back C--c-----

#class(Word_game)

#def initialize
#What are we intializing at the start of this game.

#@guess_count = 0 (total guesses to start off are at 0)
#@is_over = false. The game is not over until all guesses are exausted.
#@word_count = what word we enter
#end

class WordGame
  #attr variables
  attr_reader :word , :guess_count , :is_over , :word_array , :guess_word , :correct_letter

#def initialize
#What are we intializing at the start of this game.

#@guess_count = 0 (total guesses to start off are at 0)
#@is_over = false. The game is not over until all guesses are exausted.
#@word_count = what word we enter
#end
  def intialize
    @guess_count = 0
    @is_over = false
    @word = word
    @word_array = "#{@word}".split('')
    @guess_word = "#{@word}".split('')
    @correct_letter = 0

  end
#Write a method that will take the users word and then split it into characters to guess.
  def user_word
    @word = gets.chomp
    @guess_word.map! do |replace_letter|
    replace_letter = '-'
    end
    p guess_word.join("")
  end

  def user_guess(letter,index)
    @guess_count += 1
    #guess_index = @word_array.index(guess_letter)
    if @word_array[index] == letter
      @guess_word[index] = letter
      @correct_letter = 1
    end
  end
  #method check to see if the full word has been guessed
  #input =
  #if false. We are going to say is_over = true
  def correct_word
    if !@guess_word.index('-')
      @is_over = true
      puts "CONGRATS YOU GUESSED THE WORD, #{@word}"
    end
  end



end

while !wordgame.is_over
  puts "Guess A Letter"
  guess_letter = gets.chomp
  while passed_index < @word.length
    passed_index = 0
    user_guess(guess_letter,passed_index)
    passed_index += 1
  end
  if @correct_letter == 0
    puts "Wrong!, try again"
  else
    puts "#{@guess_word}"
    @correct_letter = 0
  end
  if @guess_count > @word.length
    @is_over = true
  end
end





#method change '-' in word to correct letters
#input = the word the user put in for the other user to guess
#output = if the user guesses right it will replace the - with the correct letter... is not right. print wrong guess again

#We want a method that will take the word of the first user.




# "Puts Welcome to the word guessing game"
# game = WordGame.new

# #while the game is not over. We want the
# while !game.is_over
#   puts "Guess a letter"
#   guess = gets.chomp
#   if !game.check_word[index]

# puts "There is no #{letter} in this word "

# puts "There is a #{letter} in the secret word"

