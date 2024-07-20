require_relative 'player'
require_relative 'question'

class Game
  def initialize(player1_name, player2_name)
    @players = [Player.new(player1_name), Player.new(player2_name)]
    @current_player_index = 0
  end

  def start
    until game_over?
      current_player = @players[@current_player_index]
      question = Question.new
      question.ask_question(current_player.name)
      answer = gets.chomp.to_i

      if question.correct_answer?(answer)
        puts "Correct!"
      else
        puts "Incorrect!"
        current_player.lose_life
      end

      show_scores

      @current_player_index = (@current_player_index + 1) % 2
    end

    announce_winner
  end

  def game_over?
    @players.any? { |player| !player.alive? }
  end

  def announce_winner
    winner = @players.find { |player| player.alive? }
    loser = @players.find { |player| !player.alive? }
    puts "#{winner.name} wins with a score of #{winner.lives}/3 lives remaining!"
    puts "#{loser.name} is out of lives."
  end

  def show_scores
    @players.each do |player|
      puts "#{player.name}: #{player.lives}/3 lives remaining"
    end
  end
end