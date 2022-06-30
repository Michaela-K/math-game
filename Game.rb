require_relative "Player"

class Game 
  attr_accessor :current_player
  
  def initialize
    @player1 = Player.new("P1")
    @player2 = Player.new("P2")
    @current_player = @player1
  end

  def play
    # puts "#{@current_player.inspect}"

    puts "------ NEW TURN: #{@current_player.name} -----"


    num1 = rand(1..3)
    num2 = rand(1..3)

    puts "What does #{num1} plus #{num2} equal?"
    @current_player.answer = gets.chomp.to_i
    answer = num1 + num2

    if @current_player.answer == answer
      @current_player.score += 1;
      puts "YES! You are correct!"
    else
      @current_player.lives -= 1;
      puts "Erm, you might want to check again"
    end

    @current_player.score += @score.to_i
    puts "P1: #{@player1.score}/3 VS P2: #{@player2.score}/3 "

    round(@current_player)
  end

  def round(current_player)
    if @current_player.lives === 0 || @current_player.score === 3
      puts "------ THATS ALL FOLKS -----"
      puts "#{@current_player.name} WON!!"
    else
      switch_player(@current_player)
      play
    end
  end

  def switch_player(current_player)
    if @current_player === @player1 ? @current_player = @player2 : @current_player = @player1
    end
  end
  
  # def to_s
  #   "#{@player1} #{@player2}"
  # end

end