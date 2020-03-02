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