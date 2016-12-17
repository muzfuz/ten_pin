# frozen_string_literal: true
class FramesList
  extend Forwardable
  def_delegators :@frames, :each_with_index, :inject, :[]

  def initialize
    @frames = [Frame.new]
  end

  def hit_pins_on_current_frame(score)
    current_frame.hit_pins(score)
  end

  private

  attr_reader :frames

  def current_frame
    set_frame
    frames.last
  end

  def set_frame
    frames << Frame.new if frames.last.finished?
  end
end
