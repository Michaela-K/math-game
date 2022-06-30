require_relative "Game"

class Player
  attr_accessor :name, :score, :answer, :lives
  attr_reader :getscore

  def initialize(name)
    @name = name
    @score = 0;
    @lives = 3;
    @answer;
  end

end