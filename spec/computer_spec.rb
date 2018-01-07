require 'computer'

describe Computer do
  let(:computer) { described_class.new }

  describe "#weapon" do
    it "returns the computer's choice of weapon" do
      allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
      expect(computer.weapon.type).to eq :Paper
    end
  end
end
