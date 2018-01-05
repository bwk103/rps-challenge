require 'computer'

describe Computer do
  let(:computer) { described_class.new }

  describe "#type" do
    it "returns the computer's choice of weapon" do
      options = [:Rock, :Paper, :Scissors]
      expect(options).to include computer.weapon.type
    end
  end
end
