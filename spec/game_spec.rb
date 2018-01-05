require 'game'
describe Game do
  let(:game) { described_class.new(player) }
  let(:player) { double(:player) }

  describe "#player" do
    it "returns the player" do
      expect(game.player).to eq player
    end
  end
end
