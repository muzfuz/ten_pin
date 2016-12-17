# frozen_string_literal: true
class ScoreCalculator
  def self.calculate(frames)
    frames.each_with_index.inject(0) do |sum, (frame, i)|
      if frame.strike?
        sum + frame.score + (frames[i + 1]&.score || 0) + (frames[i + 2]&.score || 0)
      elsif frame.spare?
        sum + frame.score + (frames[i + 1]&.score || 0)
      else
        sum + frame.score
      end
    end
  end
end
