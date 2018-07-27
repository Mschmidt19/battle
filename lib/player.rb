class Player

  DEFAULT_HIT_POINTS = 50

  def initialize(name, hp = DEFAULT_HIT_POINTS)
    @name = name
    @hp = hp
  end

  attr_reader :name
  attr_reader :hp

  def receive_damage
    @hp -= Kernel.rand(1..10)
  end

end
