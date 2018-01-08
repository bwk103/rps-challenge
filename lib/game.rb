class Game
  attr_reader :player1, :player2, :current_player, :tie, :winner

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def self.create_game(player1, player2=Computer.new)
    @current_game = Game.new(player1, player2)
  end

  def self.current_game
    @current_game
  end

  def decide_result
    return @tie = true if a_tie?
    return @winner = player2 unless player1_wins?
    @winner = player1
  end

  def switch_players
    @current_player = player2
  end

  private

  def a_tie?
    player1.weapon.type == player2.weapon.type
  end

  def player1_wins?
    player1.weapon.beats?(player2.weapon)
  end
end
