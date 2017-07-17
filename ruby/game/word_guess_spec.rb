require_relative "word_guess"

describe WordGuess do
  let(:word_guess) { WordGuess.new("word") }

  it "creates a word to play game" do
    expect(word_guess.word).to eq(["W","O","R","D"])
    expect(word_guess.secret_word).to eq(["_","_","_","_"])
  end

  it "updates number of guesses" do
    expect(word_guess.chances).to eq(4)
    word_guess.guess("a")
    expect(word_guess.chances).to eq(3)
    word_guess.guess("a")
    expect(word_guess.chances).to eq(3)
  end
end
