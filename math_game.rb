require './player'
require './question'

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

  def start
    puts "  .     '     ,"
    puts "    _________"
    puts " _ /_|_____|_\\ _"
    puts "   '. \\   / .'"
    puts "     '.\\ /.'"
    puts "       '.'"
    puts "Welcome to Ruby Math Game!"
    puts "This is a two player game."
    until game_over? do
      puts "---- NEW TURN ----"
      puts "#{current_player.name},"
      q = Question.new
      if gets.chomp.to_i != q.ans
        lose_life
      end
      swap_players
      print_lives
    end
    puts "---- GAME OVER ----"
  end

  def lose_life
    current_player.lose_life
  end

  def print_lives
    puts "P1: #{@players[0].lives} lives vs P2: #{@players[1].lives} lives"
  end

  def swap_players
    @current_player = (@current_player + 1) % @players.length
  end

  def game_over?
    @players.any? { |player| player.lives <= 0 }
  end

end

MathGame.main
