# frozen_string_literal: true

require 'securerandom'

class Player
  attr_accessor :lives
  attr_accessor :playerNumber

  @@whichPlayer = 0

  def initialize
    @lives = 3
    @@whichPlayer += 1
    @playerNumber = @@whichPlayer
  end
end

# Have 2 question functions: Add, subtract
# Returns an array containing a
class Questions
  def add(numbers)
    numbers[0] + numbers[1]
  end

  def subtract(numbers)
    numbers[0] - numbers[1]
  end

  # def multiply(numbers)
  #   numbers[0] + numbers[1]
  # end

  def sendBack
    numbers = [rand(1...20), rand(1...20)]
    type = %w[add subtract].sample
    if type == 'add'
      package = { question: "What is #{numbers[0]} + #{numbers[1]}?", answer: add(numbers) }
    elsif type == 'subtract'
      package = { question: "What is #{numbers[0]} - #{numbers[1]}?", answer: subtract(numbers) }
      # elsif type == 'multiply'
      #   package = { question: "What is #{numbers[0]} x #{numbers[1]}?", answer: multiply(numbers) }
    end

    package
  end
end

class Turns
  attr_accessor :whoseTurn
  attr_accessor :turnOne

  def initialize
    # Starts as false, so it can be set to true turn 1
    @whoseTurn = false
    @turnOne = true
  end

  def whoseGoing
    if @whoseTurn == true
      '1'
    else
      '2'
    end
  end

  def turnMessage
    if @turnOne == false
      return '--- NEW TURN ---'
    else
      return '--- NEW GAME ---'
    end
  end

end

p1 = Player.new
p2 = Player.new
question = Questions.new
turn = Turns.new

while p1.lives > 0 && p2.lives > 0

  puts "#{turn.turnMessage}"

  turn.whoseTurn = !turn.whoseTurn

  asked = question.sendBack

  player = turn.whoseGoing

  puts "Player #{player}: #{asked[:question]}"
  input = gets

  if input.to_f == asked[:answer]
    puts "Player #{player}: YES! You are correct."
  else
    puts "Player #{player}: Seriously? No!"
    if turn.whoseTurn == true
      p1.lives = p1.lives - 1
    else
      p2.lives = p2.lives - 1
    end
  end

  puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3"

  turn.turnOne = false

end

if turn.whoseTurn == false
  puts "Player 1 wins with a score of #{p1.lives}/3"
else
  puts "Player 2 wins with a score of #{p2.lives}/3"
end
