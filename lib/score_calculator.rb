# frozen_string_literal: true
class ScoreCalculator
  attr_reader :frames

  def initialize(frames)
    @frames = frames
  end

  def calculate
    apply_rules
    sum_frame_scores
  end

  private

  def sum_frame_scores
    frames.inject(0) { |sum, frame| sum + frame.score }
  end

  def apply_rules
    frames.each_with_index do |frame, index|
      apply_strike_rule(frame, index)
      apply_spare_rule(frame, index)
    end
  end

  def apply_strike_rule(frame, index)
    return unless frame.strike?
    frame.score += score_for_frame(index + 1) + score_for_frame(index + 2)
  end

  def apply_spare_rule(frame, index)
    return unless frame.spare?
    frame.score += score_for_frame(index + 1)
  end

  def score_for_frame(index)
    frames[index]&.score || 0
  end
end
