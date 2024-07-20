class Question
  attr_reader :number1, :number2

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
  end

  def ask_question(player_name)
    puts "#{player_name}, what is #{number1} + #{number2}?"
  end

  def correct_answer?(answer)
    answer == (number1 + number2)
  end
end