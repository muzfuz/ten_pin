# frozen_string_literal: true
class Frame
  attr_accessor :score

  def initialize
    @score = 0
    @first_roll = false
    @second_roll = false
  end

  def hit_pins(pins_hit)
    @score += pins_hit
    track_rolls
  end

  def strike?
    score == 10 && second_roll == false
  end

  def spare?
    score == 10 && second_roll == true
  end

  def finished?
    rolled_twice? || score >= 10
  end

  private

  attr_reader :first_roll, :second_roll

  def track_rolls
    if first_roll == false
      @first_roll = true
    else
      @second_roll = true
    end
  end

  def rolled_twice?
    second_roll && first_roll
  end
end
