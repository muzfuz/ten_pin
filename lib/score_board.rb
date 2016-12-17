# frozen_string_literal: true
class ScoreBoard
  def initialize
    @frames = [Frame.new]
  end

  def add_score(pins_hit)
    current_frame.hit_pins(pins_hit)
  end

  def score
    ScoreCalculator.new(@frames).calculate
  end

  private
  attr_reader :frames

  def current_frame
    keep_or_advance_frame
    frames.last
  end

  def keep_or_advance_frame
    frames << Frame.new if frames.last.finished?
  end
end
