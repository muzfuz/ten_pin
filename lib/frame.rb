# frozen_string_literal: true
class Frame
  def hit_pins(pins_hit)
    if !first_hit
      @first_hit = pins_hit
    else
      @second_hit = pins_hit
    end
  end

  def finished?
    both_scores_filled? || score >= 10
  end

  def score
    if first_hit && second_hit
      first_hit + second_hit
    elsif first_hit
      first_hit
    else
      0
    end
  end

  def strike?
    @first_hit == 10
  end

  private

  attr_reader :first_hit, :second_hit

  def both_scores_filled?
    !(first_hit.nil? || second_hit.nil?)
  end
end
