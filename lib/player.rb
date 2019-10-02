class Player

attr_reader :name, :hp
HIT_POINTS = 50

  def initialize(name)
    @name = name
    @hp = HIT_POINTS
  end

  def attack(opponent)
    opponent.receive_damage
  end

  def receive_damage
    @hp -= 10
  end

end
