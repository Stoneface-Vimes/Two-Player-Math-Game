# frozen_string_literal: true

require 'securerandom'

class Player
  attr_accessor :lives

  def initialize
    @lives = 3
  end
end

# Have 3 question functions: Add, subtract, multiply
# Returns an array containing a 
class Questions
  def add(numbers)
    numbers[0] + numbers[1]
  end

  def subtract(numbers)
    numbers[0] - numbers[1]
  end

  def multiply(numbers)
    numbers[0] + numbers[1]
  end

  def sendBack()
    numbers = [rand(1...20), rand(1...20)]
    type = ['add', 'subtract', 'multiply'].sample
    if type == 'add'
      package = {:question => "What is #{numbers[0]} + #{numbers[1]}?", :answer => add(numbers)}
    elsif type == 'subtract'
      package = {:question => "What is #{numbers[0]} - #{numbers[1]}?", :answer => subtract(numbers)}
    elsif type == 'multiply'
      package = {:question => "What is #{numbers[0]} x #{numbers[1]}?", :answer => multiply(numbers)}
    end

    return package
  end
end

p1 = Player.new
p2 = Player.new
p p1
p1.lives = p1.lives - 1
p p1

question = Questions.new

test = question.sendBack()
p test[:question]
p test[:answer]
