=begin
- Write a class designed for a computer program to use
- One user can enter a word (or phrase, if you would like your game to support that), 
  and another user attempts to guess the word.
- Guesses are limited, and the number of guesses available is 
  related to the length of the word.
- Repeated guesses do not count against the user.
- The guessing player receives continual feedback on the current state of the word.
  So if the secret word is "unicorn", the user will start out seeing something like "_ _ _ _ _ _ _", 
  which would become "_ _ _ c _ _ _" after the user enters a guess of "c".
- The user should get a congratulatory message if they win, and a taunting message if they lose.

- Practice going from "red to green" by writing RSpec tests for each feature you add to your game,
  watching the test fail, and then writing code to make the test pass. This will be challenging work, 
  but it's much better than testing your game by hand every single time you change something!
=end



=begin
Should I use an array or a string?
Can always split string up to an array - easier to work with
Then put it back into a string

# Method to initialize word being guessed
# input: @word = word, attr_writer :word
# steps: @word = word, attr_writer :word
# output: nothing because it is private, can't read, only write

# Method to limit guess to the length of the word
# input: guess = @word.length (conditional)
# steps: 
  1. set a guess count = 0 (eql?)
  2. need a way to store the number of guess made (num_guess)
  3. IF num_guess == @word.length
      is_over = true
  4. else increment the guess count += 1
# output: if the guess is eq to @word.length, game is over, if not continue

# Method to track repeated guesses don't count against the user
# input: letters_guessed << letter
# steps:
  1. make variable letters_guessed that keep tracks of all the inputted letters
  2. iterate through letters_guessed to check if the letter has been guessed
  3. IF letter is present
    !guess_count += 1
# output: if the guess is repeated, the num_guess should stay the same

# Method to change word into underscores 
# input: string -> array
# steps: 
  1. change string into underscores using .tr
  2. make that string into an array
# output: array of underscores

# Method to access the @word/@blank by index
# input: input a letter, match to @word, if matched, change underscore in @blank
# steps:
  1. set loop for the length of the letter
  2. iterate through the word
  3. IF letter is include in @word?
      access letter in word by index 
  4. swap out the @blank position to that letter
  5. increment by 1
# output: "_ _ _ z _"

# Method to show the status of the word (=print method?)
# input: nothing/ just finding way to print the guesses that have been made
# steps: 
  1. store all the statues into a variable
  2. print that status
# output: print all the accurate guesses

# Method to congratulate/taunt the user if win/lose
# input: give user a chance to guess the whole word at any point in the program (loop?)
# steps: 
  1. IF guess == @word
    is_over = true
  2. p "congrats!"
  3. p "you suck!"
# output: thank or no thanks depending on guessing of word

USER INTERFACE

=end

# Didn't follow pseudo-code exactly after refactoring!

class Hangman
  attr_writer :word
  attr_reader :is_over

  def initialize(word)
    @word = word
    @is_over = false
    @guess_count = 0
    @letters_guessed = []
  end

  def blank_spaces
    @underscores = @word.tr('a-z', '_').chars
  end

  def string_to_array
    @word = @word.chars
  end

  def letters_attempted(letter)
    if !@letters_guessed.include?(letter)
      @letters_guessed << letter
      @guess_count += 1
    else @letters_guessed.include?(letter)
       @guess_count += 0
    end
  end

  def match(letter)
    for i in 0..@word.length
      if @word[i] == letter
        @underscores[i] = letter
      end
    end
  end

  def limit_guesses
    if @letters_guessed.length == @word.length
      @is_over = true
    else
      false
    end
  end

  def exact    
    if @underscores == @word
      @is_over = true
    else
      false
    end
  end

  def print_progress
    p @underscores.join
  end


end


#USER INTERFACE
# puts "Welcome to Hangman!"

# puts "Player 1, please enter a word for Player 2 to guess."
# input = gets.chomp
# game = Hangman.new(input)
# game.blank_spaces
# game.string_to_array

# while !game.is_over
#   puts "Player 2: please enter a letter or guess the word or guess the whole word."
#   letter = gets.chomp

#   if letter == input 
#     puts "YOU WIN!"
#     break
#   end

#   game.letters_attempted(letter)
#   game.match(letter)
#   game.print_progress

#   if game.limit_guesses && !game.exact
#     puts "Sorry, you ran out of guesses!"
#     puts "The word was: #{input}."
#   end 

#   if game.exact
#     puts "YOU WIN!"
#   end

# end



# mo = Hangman.new("mask")
# mo.blank_spaces
# mo.string_to_array
# mo.letters_attempted("t")
# mo.letters_attempted("p")
# mo.letters_attempted("a")
# mo.letters_attempted("v")
# mo.letters_attempted("v")
# mo.limit_guesses
# mo.match("a")
# mo.match("k")
# p mo

# dino = Hangman.new("kisses")
# dino.blank_spaces
# dino.string_to_array
# dino.letters_attempted("t")
# dino.letters_attempted("p")
# dino.letters_attempted("p")
# dino.letters_attempted("i")
# dino.letters_attempted("f")
# dino.letters_attempted("v")
# dino.letters_attempted("k")
# dino.limit_guesses
# dino.match("e")
# dino.match("k")
# p dino


# def match(letter)
#   index = 0
#   while index < @word.length
#     @word.each do |i|
#       if i == letter
#         @underscores.delete_at(@word.index(letter))
#         @underscores.insert(@word.index(letter), letter)
#       end
#     end 
#   index += 1
#   end
# end








