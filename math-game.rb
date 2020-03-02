# frozen_string_literal: true

require 'securerandom'

class Player
  attr_accessor :lives

  def initialize
    @lives = 3
  end
end

# Have 4 question functions
# Add, subtract, multiply, divide
# use sample in question to select a random function from questions and pass in
# the user defined numbers
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
  # def divide(numbers)
  #   return numbers[0] + numbers[1]
  # end

  def sendBack(numbers, answer, type)
    if type == 'add'
      package = ["What is #{numbers[0]} + #{numbers[1]}?", answer]
    elsif type == 'subtract'
      package = ["What is #{numbers[0]} - #{numbers[1]}?", answer]
    elsif type == 'multiply'
      package = ["What is #{numbers[0]} x #{numbers[1]}?", answer]
    end
  end
end



p1 = Player.new
p2 = Player.new


p p1

p1.lives= p1.lives - 1

p p1
