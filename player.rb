class Player
  attr_reader :name, :life

  def initialize(name)
    # Starts each player with 3 lives
    @life = 3
    @name = name
  end
  
  def wrong
    # Deducts a life for wrong answer
    @life -= 1
  end

  def gameover
    @life == 0
  end
end