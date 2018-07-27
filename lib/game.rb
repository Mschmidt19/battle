class Game

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
    @turn_count = 0
  end

  attr_reader :current_turn, :turn_count

  def player1
    @players.first
  end

  def player2
    @players[1]
  end

  def switch_turns
    @turn_count += 1
    @current_turn = @players[@turn_count % @players.length]
  end

  def attack(player)
    player.receive_damage
  end

  def opponent_of(the_player)
     players.select { |player| player != the_player }.first
  end

  def loser
    losing_players.first
  end

  def game_over?
    losing_players.any?
  end

  private

  attr_reader :players

  def losing_players
    players.select { |player| player.hp <= 0 }
  end

end
