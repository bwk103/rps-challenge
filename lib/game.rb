class Game
  attr_reader :player

  def initialize(player)
    @player = player
  end

  def self.create_game(player)
    @current_game = Game.new(player)
  end

  def self.current_game
    @current_game
  end
end
