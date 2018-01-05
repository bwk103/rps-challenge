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
end
