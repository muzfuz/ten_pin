# frozen_string_literal: true
class ScoreBoard
  attr_reader :frames

  def initialize
    @frames = [Frame.new]
  end

  def add_score(score)
    current_frame.hit_pins(score)
  end

  def score
    ScoreCalculator.calculate(@frames)
  end

  def current_frame
    set_frame
    frames.last
  end

  def set_frame
    frames << Frame.new if frames.last.finished?
  end
end
