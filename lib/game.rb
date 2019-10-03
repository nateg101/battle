class Game

  attr_reader :player1, :player2, :players, :current_turn

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

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
    return "GAME... OVER!" if end_game?
    @current_turn = opponent_of(current_turn)
  end

  def attacker
    @current_turn
  end

  def defender
    opponent_of(@current_turn)
  end

  def end_game?
    self.defender.hp <= 0 ? true : false
  end

  private

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end
end
