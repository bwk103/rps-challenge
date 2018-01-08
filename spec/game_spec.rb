require 'game'
describe Game do
  let(:game) { described_class.new(player1, computer) }
  let(:player1) { double(:player) }
  let(:player2) { double(:player2) }
  let(:computer) { double(:computer) }

  describe "#player1" do
    it "returns player 1" do
      expect(game.player1).to eq player1
    end
  end

  describe "#player2" do
    it "returns player 2" do
      expect(game.player2).to eq computer
    end
  end

  describe "#decide_result" do
    it "sets @result to :tie if both players select the same weapon" do
      allow(game).to receive(:a_tie?).and_return(true)
      game.decide_result
      expect(game.tie).to eq true
    end

    it "sets @winner to player1 if the player's weapon wins" do
      allow(game).to receive(:a_tie?).and_return(false)
      allow(game).to receive(:player1_wins?).and_return(true)
      game.decide_result
      expect(game.winner).to eq player1
    end

    it "sets @winner to player2 if the player's weapon wins" do
      allow(game).to receive(:a_tie?).and_return(false)
      allow(game).to receive(:player1_wins?).and_return(false)
      game.decide_result
      expect(game.winner).to eq computer
    end
  end

  describe '#current_player' do
    it "returns the current player" do
      expect(game.current_player).to eq player1
    end
  end

  describe '#switch_players' do
    it "alternates the current player" do
      game = described_class.new(player1, player2)
      game.switch_players
      expect(game.current_player).to eq player2
    end
  end
end
