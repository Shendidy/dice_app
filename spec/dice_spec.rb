require 'dice'

describe Dice do
  context "V1.1: Roll a dice" do
    it "Should  respond to .roll" do
      dice = Dice.new
      expect(dice).to respond_to :roll
    end
    it "Should return a random number between 1 & 6" do
      dice = Dice.new
      expect(dice.roll).to be < 7
    end
  end
end
