# frozen_string_literal: true
require "spec_helper"

describe ScoreBoard do
  let(:score_board) { ScoreBoard.new }

  context "rolling to hit the pins" do
    before(:each) do
      score_board.add_score(3)
      score_board.add_score(2)
      score_board.add_score(5)
      score_board.add_score(2)
    end

    it "automatically adds new frames to the score board" do
      expect(score_board.frames.length).to eq 2
    end

    it "returns the total score for all the frames" do
      expect(score_board.total).to equal 12
    end
  end
end
