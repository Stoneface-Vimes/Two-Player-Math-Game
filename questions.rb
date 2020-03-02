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