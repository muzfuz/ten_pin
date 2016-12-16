# frozen_string_literal: true
class ScoreBoard
  attr_reader :frames

  def initialize
    @frames = [Frame.new]
  end

  def add_score(score)
    set_frame
    current_frame.hit_pins(score)
  end

  def total
    acc = 0
    frames.each_with_index do |frame, i|
      if frame.strike?
        acc += frame.score + (frames[i+1]&.score || 0) + (frames[i+2]&.score || 0)
      else
        acc += frame.score
      end
    end
    acc
  end

  private

  def set_frame
    frames << Frame.new if current_frame.finished?
  end

  def current_frame
    frames.last
  end
end
