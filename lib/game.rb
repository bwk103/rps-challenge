class Game
  attr_reader :player, :computer

  def initialize(player, computer=Computer.new)
    @player = player
    @computer = computer
  end

  def self.create_game(player)
    @current_game = Game.new(player)
  end

  def self.current_game
    @current_game
  end
end
