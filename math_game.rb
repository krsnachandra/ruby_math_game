require './player'

class MathGame

  def self.main
    game = MathGame.new
    game.start
  end

  def initialize
    @players = [
      Player.new('Player 1'),
      Player.new('Player 2')
    ]
    @current_player = 0
  end

  def current_player
    @players[@current_player]
  end

  def lose_life
    current_player.lose_life
  end

  def game_over?
    @players.any? { |player| player.lives <= 0 }
  end

end