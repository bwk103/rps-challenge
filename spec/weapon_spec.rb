require 'weapon'
describe Weapon do
  let(:rock) { described_class.new('Rock') }
  let(:paper) { described_class.new('Paper')}
  let(:scissors) { described_class.new('Scissors') }

  describe "#type" do
    it "returns the type of the weapon as a symbol" do
      expect(rock.type).to eq :Rock
    end
  end

  describe "#beats?" do
    it "takes another weapon as a parameter" do
      expect(rock).to respond_to(:beats?).with(1).argument
    end

    it "returns true when the current type beats the argument passed" do
      expect(rock.beats?(scissors)).to eq true
    end

    it "returns false when the argument passed beats the current type" do
      expect(rock.beats?(paper)).to eq false
    end
  end
end
