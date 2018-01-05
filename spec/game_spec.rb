require 'game'
describe Game do
  let(:game) { described_class.new(player, computer) }
  let(:player) { double(:player) }
  let(:computer) { double(:computer) }

  describe "#player" do
    it "returns the player" do
      expect(game.player).to eq player
    end
  end

  describe "#computer" do
    it "returns the computer player" do
      expect(game.computer).to eq computer
    end
  end

  describe "#decide_result" do
    it "sets @result to :tie if both players select the same weapon" do
      allow(game).to receive(:a_tie?).and_return(true)
      game.decide_result
      expect(game.result).to eq :tie
    end

    it "sets @result to :win if the player's weapon wins" do
      allow(game).to receive(:a_tie?).and_return(false)
      allow(game).to receive(:player_wins?).and_return(true)
      game.decide_result
      expect(game.result).to eq :win
    end

    it "sets @result to :lose if the player's weapon wins" do
      allow(game).to receive(:a_tie?).and_return(false)
      allow(game).to receive(:player_wins?).and_return(false)
      game.decide_result
      expect(game.result).to eq :lose
    end
  end
end
