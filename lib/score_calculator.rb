# frozen_string_literal: true
class ScoreCalculator
  attr_reader :frames

  def initialize(frames)
    @frames = frames
  end

  def calculate
    apply_rules
    frames.inject(0) { |sum, frame| sum + frame.score }
  end

  private

  def apply_rules
    frames.each do |frame|
      apply_strike_rule(frame)
      apply_spare_rule(frame)
    end
  end

  def apply_strike_rule(frame)
    return unless frame.strike?
    i = frames.index(frame)
    frame.score += score_for_frame(i + 1) + score_for_frame(i + 2)
  end

  def apply_spare_rule(frame)
    return unless frame.spare?
    i = frames.index(frame)
    frame.score += score_for_frame(i + 1)
  end

  def score_for_frame(index)
    frames[index]&.score || 0
  end
end
