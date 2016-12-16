# frozen_string_literal: true
class TenPinGame
  def initialize
    @score_board = ScoreBoard.new
  end

  def roll(pins_hit)
    score_board.add_score(pins_hit)
  end

  def score
    score_board.total
  end

  private

  attr_reader :score_board
end
