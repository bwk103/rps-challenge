class Game
  attr_reader :player1, :player2, :result

  def initialize(player1, player2=Computer.new)
    @player1 = player1
    @player2 = player2
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
    player1.weapon.type == player2.weapon.type
  end

  def player_wins?
    player1.weapon.beats?(player2.weapon)
  end
end
