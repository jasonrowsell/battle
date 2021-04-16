class Player
  attr_reader :name, :hp

  DEFAULT_HP = 60

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp   = hp
  end

  def receive_damage
    @hp -= 10
  end

  private

  attr_writer :hp
end
