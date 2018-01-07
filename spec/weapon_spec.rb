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

    it "rock beats scissors" do
      expect(rock.beats?(scissors)).to eq true
    end

    it "rock ties with rock" do
      expect(rock.beats?(rock)).to eq false
    end

    it "rock loses to paper" do
      expect(rock.beats?(paper)).to eq false
    end

    it "paper beats rock" do
      expect(paper.beats?(rock)).to eq true
    end

    it "paper ties with paper" do
      expect(paper.beats?(paper)).to eq false
    end

    it "paper loses to scissors" do
      expect(paper.beats?(scissors)).to eq false
    end

    it "scissors beats paper" do
      expect(scissors.beats?(paper)).to eq true
    end

    it "scissors ties with scissors" do
      expect(scissors.beats?(scissors)).to eq false
    end

    it "scissors loses to rock" do
      expect(scissors.beats?(rock)).to eq false
    end
  end
end
