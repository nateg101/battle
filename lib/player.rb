require_relative 'game'

class Player

attr_reader :name, :hp
HIT_POINTS = 50

  def initialize(name)
    @name = name
    @hp = HIT_POINTS
  end

  def receive_damage
    @hp -= damage
  end

  private

  def damage
    rand(0..15)
  end

end
