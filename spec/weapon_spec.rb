require 'weapon'
describe Weapon do
  let(:rock) { described_class.new('Rock') }
  let(:paper) { described_class.new('Paper') }
  let(:scissors) { described_class.new('Scissors') }
  let(:spock) { described_class.new('Spock') }
  let(:lizard) { described_class.new('Lizard') }

  describe '#type' do
    it 'returns the type of the weapon as a symbol' do
      expect(rock.type).to eq :Rock
    end
  end

  describe '#beats?' do
    it 'takes another weapon as a parameter' do
      expect(rock).to respond_to(:beats?).with(1).argument
    end

    context 'rock' do
      it 'rock beats scissors' do
        expect(rock.beats?(scissors)).to eq true
      end

      it 'rock beats lizard' do
        expect(rock.beats?(lizard)).to eq true
      end

      it 'rock ties with rock' do
        expect(rock.beats?(rock)).to eq false
      end

      it 'rock loses to paper' do
        expect(rock.beats?(paper)).to eq false
      end

      it 'rock loses to spock' do
        expect(rock.beats?(spock)).to eq false
      end
    end

    context 'paper' do
      it 'paper beats rock' do
        expect(paper.beats?(rock)).to eq true
      end

      it 'paper beats spock' do
        expect(paper.beats?(spock)).to eq true
      end

      it 'paper ties with paper' do
        expect(paper.beats?(paper)).to eq false
      end

      it 'paper loses to scissors' do
        expect(paper.beats?(scissors)).to eq false
      end

      it 'paper loses to lizard' do
        expect(paper.beats?(lizard)).to eq false
      end
    end

    context 'scissors' do
      it 'scissors beats paper' do
        expect(scissors.beats?(paper)).to eq true
      end

      it 'scissors beats lizard' do
        expect(scissors.beats?(lizard)).to eq true
      end

      it 'scissors ties with scissors' do
        expect(scissors.beats?(scissors)).to eq false
      end

      it 'scissors loses to rock' do
        expect(scissors.beats?(rock)).to eq false
      end

      it 'scissors loses to spock' do
        expect(scissors.beats?(spock)).to eq false
      end
    end

    context 'spock' do
      it 'spock beats scissors' do
        expect(spock.beats?(scissors)).to eq true
      end

      it 'spock beats rock' do
        expect(spock.beats?(rock)).to eq true
      end

      it 'spock loses to lizard' do
        expect(spock.beats?(lizard)).to eq false
      end

      it 'spock loses to paper' do
        expect(spock.beats?(paper)).to eq false
      end

      it 'spock ties with spock' do
        expect(spock.beats?(spock)).to eq false
      end
    end

    context 'lizard' do
      it 'lizard beats spock' do
        expect(lizard.beats?(spock)).to eq true
      end

      it 'lizard beats paper' do
        expect(lizard.beats?(paper)).to eq true
      end

      it 'lizard loses to rock' do
        expect(lizard.beats?(rock)).to eq false
      end

      it 'lizard loses to scissors' do
        expect(lizard.beats?(scissors)).to eq false
      end

      it 'lizard ties with lizard' do
        expect(lizard.beats?(lizard)).to eq false
      end
    end
  end
end
