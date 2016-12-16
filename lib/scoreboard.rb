# frozen_string_literal: true
class ScoreBoard
  attr_reader :frames

  def initialize
    @frames = [Frame.new]
  end

  def add_score(score)
    next_frame
    current_frame.hit_pins(score)
  end

  def total
    frames.reduce(0) { |sum, frame| sum + frame.score }
  end

  private

  def next_frame
    if current_frame.strike?
      frames << DoubleScoreFrame.new
    elsif current_frame.finished?
      frames << Frame.new
    end
  end

  def current_frame
    frames.last
  end
end
