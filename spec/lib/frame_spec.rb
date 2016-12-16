# frozen_string_literal: true
require "spec_helper"

describe Frame do
  describe "creating a new frame" do
    let(:frame) { Frame.new }

    context "when hitting some simple scores" do
      it "stores the score for one throw" do
        frame.hit_pins(10)
        expect(frame.score).to equal 10
      end

      it "stores the value for the first and second throw" do
        frame.hit_pins(4)
        frame.hit_pins(3)
        expect(frame.score).to equal 7
      end
    end

    context "when a frame is completed" do
      context "with two scores" do
        it "knows it is finished" do
          frame.hit_pins(5)
          frame.hit_pins(5)
          expect(frame.finished?).to be true
        end
      end

      context "with a strike score" do
        it "knows it is finished" do
          frame.hit_pins(10)
          expect(frame.finished?).to be true
        end
      end
    end

    context "when a frame is not completed" do
      it "knows it is not completed yet" do
        frame.hit_pins(5)
        expect(frame.finished?).to be false
      end
    end
  end

  context "when scoring a strike" do
    let(:frame) { Frame.new }

    it "knows when it is a strike score" do
      frame.hit_pins(10)
      expect(frame.strike?).to be true
    end

    it "knows when it is not a strike score" do
      frame.hit_pins(5)
      expect(frame.strike?).to be false
    end
  end
end
