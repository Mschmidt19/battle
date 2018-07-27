class Game

  def self.instance
    @game
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = @players[Kernel.rand(0..1)]
    @turn_count = 0
    if @current_turn == player1
      @start = 0
    else
      @start = 1
    end
  end

  attr_reader :current_turn, :turn_count, :players, :start

  def player1
    @players.first
  end

  def player2
    @players[1]
  end

  def switch_turns
    @turn_count += 1
    @start += 1
    @current_turn = @players[@start % @players.length]
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

  # attr_reader :players

  def losing_players
    players.select { |player| player.hp <= 0 }
  end

end
