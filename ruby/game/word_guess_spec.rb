require_relative "word_guess"

describe WordGuess do
  let(:word_guess) { WordGuess.new }

  it "creates a word or a phrase to play game" do
    expect(word_guess.create_word_phrase("word")).to include(word_phrase: ["w","o","r","d"], secret: ["_","_","_","_"])
  end
end
