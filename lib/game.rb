class Game

  attr_reader :player1, :player2, :players, :current_turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
    @current_turn = player1
  end

  def attack(opponent)
    opponent.receive_damage
  end

  def switch_turn
    @current_turn = opponent_of(current_turn)
  end

  def attacker
    @current_turn
  end

  def defender
    opponent_of(@current_turn)
  end

  private

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end
end
