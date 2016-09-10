require_relative 'hangman'

describe Hangman do
  let(:game) { Hangman.new("love") }

  it "change word into underscores" do 
    expect(game.blank_spaces).to eq ["_", "_", "_", "_"]
  end 

  it "changes string to an array" do 
    expect(game.string_to_array).to eq ["l", "o", "v", "e"]
  end

  it "dupliciate counts don't count against user" do 
    game.letters_attempted("p")
    game.letters_attempted("p")
    game.letters_attempted("o")
    game.letters_attempted("b")
    expect(game.limit_guesses).to eq false
  end 

  it "limit guesses to word length" do 
    game.letters_attempted("p")
    game.letters_attempted("o")
    game.letters_attempted("b")
    game.letters_attempted("i")
    expect(game.limit_guesses).to eq true
  end 

  it "exact fails when guess is word" do 
    game.letters_attempted("l")
    expect(game.exact).to eq false
  end

  it "prints player 2's progress" do 
    game.blank_spaces
    game.string_to_array
    expect(game.print_progress).to eq "____"
  end

  it "matches letter guessed and swaps it at underscore index" do 
    game.blank_spaces
    game.string_to_array
    game.match("o")
    expect(game.print_progress).to eq "_o__"
  end

end 

# all rspec tests work when hash out user interface?
