require 'player'

describe Player do
  let(:player) { described_class.new('Bob') }
  let(:rock) { double(:rock)}

  describe '#name' do
    it "returns the player's name" do
      expect(player.name).to eq 'Bob'
    end
  end

  describe "set_weapon" do
    it "assigns the player's choice to @weapon" do
      player.set_weapon(rock)
      expect(player.weapon).to be rock
    end
  end
end
