# frozen_string_literal: true

require 'securerandom'
require './player'
require './questions'
require './turns'

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
  input = gets.chomp

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
