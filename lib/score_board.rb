# frozen_string_literal: true
class ScoreBoard
  def initialize
    @frames_list = FramesList.new
  end

  def add_score(score)
    @frames_list.hit_pins_on_current_frame(score)
  end

  def score
    ScoreCalculator.calculate(@frames_list)
  end
end
