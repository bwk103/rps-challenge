class Game
  attr_reader :player, :computer, :result

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

  def decide_result
    return @result = :tie if a_tie?
    return @result = :lose unless player_wins?
    @result = :win
  end

  private

  def a_tie?
    player.weapon.type == computer.weapon.type
  end

  def player_wins?
    player.weapon.beats?(computer.weapon)
  end
end
