require 'dice'

RSpec.describe Dice do
  context "V1.1: Roll a dice" do
    dice = Dice.new
    it "1. Should  respond to .roll" do
      # dice = Dice.new
      expect(dice).to respond_to :roll
    end
    it "2. Should return a random number between 1 & 6" do
      # dice = Dice.new
      expect(dice.roll).to be_between(1, 6)
    end
  end

  context "V1.4: take number of dice to roll" do
    dice2 = Dice.new
    it "3. Should check the variable" do
      expect(dice2.instance_variable_get(:@count)).to eq 1
    end
  end

  context "V1.4: take number of dice to roll" do
    dice3 = Dice.new(3)
    it "4. Should be able to pass a number of dice to the instance on instanciation" do
      expect(dice3.instance_variable_get(:@count)).to eq 3
    end
  end

  context "V1.4: return numbers rolled" do
    dice3 = Dice.new(3)
    it "5. Should be able to return the rolling outcome" do
      expect(dice3.roll.length).to eq 3
    end
    dice4 = Dice.new(5)
    it "6. Should be able to return the rolling outcome" do
      expect(dice4.roll.length).to eq 5
    end
  end

  context "V1.5: return the total of all rolls" do
    dice5 = Dice.new(2)
    4.times {dice5.roll}
    it "7. Should return number of numbers so far" do
      expect(dice5.instance_variable_get(:@result).length).to eq 8
    end
  end

  context "V1.6: return total of all previous rolls" do
    dice6 = Dice.new(2)
    5.times {dice6.roll}
    it "8. Should respond to the method" do
      expect(dice6).to respond_to :sumup
    end
    it "9. Should return a number between 10 and 60 (inclusive)" do
      #p dice6.sumup
      expect(dice6.sumup).to be_between(10, 60)
    end
  end

end
