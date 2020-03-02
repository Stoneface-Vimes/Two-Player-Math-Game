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