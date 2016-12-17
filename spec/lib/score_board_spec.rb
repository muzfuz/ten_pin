# frozen_string_literal: true
require "spec_helper"

describe ScoreBoard do
  let(:score_board) { ScoreBoard.new }

  context "calculating scores for the game" do
    it "returns the total score for all the frames" do
      score_board.add_score(3)
      score_board.add_score(2)
      score_board.add_score(5)
      score_board.add_score(2)
      expect(score_board.score).to equal 12
    end

    it "respects the rules for strikes" do
      score_board.add_score(10)
      score_board.add_score(10)
      score_board.add_score(10)
      expect(score_board.score).to equal 60
    end
  end
end
