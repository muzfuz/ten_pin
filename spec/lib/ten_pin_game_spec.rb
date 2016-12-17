# frozen_string_literal: true
require "spec_helper"

describe TenPinGame do
  describe "ten pin bowling" do
    context "when rolling 1,3,6,3" do
      game = TenPinGame.new
      [1, 3, 6, 3].each { |n| game.roll(n) }

      it "should be a score of 13" do
        expect(game.score).to eq 13
      end
    end

    context "when rolling 10, 4, 0" do
      game = TenPinGame.new
      [10, 4, 0].each { |n| game.roll(n) }

      it "should be a score of 18" do
        skip "Make the previous test green first, then delete this line!"
        expect(game.score).to eq 18
      end
    end

    context "when rolling 10,10,10" do
      game = TenPinGame.new
      [10, 10, 10].each { |n| game.roll(n) }

      it "should be a score of 60" do
        skip "Make the previous test green first, then delete this line!"
        expect(game.score).to eq 60
      end
    end

    context "when rolling a spare" do
      game = TenPinGame.new
      [1, 9, 10].each { |n| game.roll(n) }

      it "should be a score of 30" do
        skip "Make the previous test green first, then delete this line!"
        expect(game.score).to eq 30
      end
    end

    context "when playing a normal length game" do
      game = TenPinGame.new
      20.times { game.roll(1) }

      it "should be a score of 20" do
        skip "Make the previous test green first, then delete this line!"
        expect(game.score).to eq 20
      end
    end

    context "when playing a bonus round game" do
      game = TenPinGame.new
      18.times { game.roll(1) }
      3.times { game.roll(10) }

      it "should be a score of 78" do
        skip "Make the previous test green first, then delete this line!"
        expect(game.score).to eq 78
      end
    end
  end
end
