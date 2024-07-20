require_relative 'game'

puts "Enter player 1 name:"
player1_name = gets.chomp
puts "Enter player 2 name:"
player2_name = gets.chomp

game = Game.new(player1_name, player2_name)
game.start