require_relative 'player'

class Game
  attr_reader :player1, :player2, :current_player, :target_player

  def initialize(player1 = Player.new, player2 = Player.new)
    @player1        = player1
    @player2        = player2
    @current_player = player1
    @target_player  = player2
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    @current_player, @target_player = target_player, current_player
  end
  
  private

  attr_writer :current_player, :target_player
end
