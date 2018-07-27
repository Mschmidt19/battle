require 'player'

describe Player do

  subject(:p1) { described_class.new("Marek")  }
  let(:p2)     { described_class.new("Daniel") }

  before do
    allow(Kernel).to receive(:rand).and_return(10)
  end

  describe "#name" do
    it "knows the player's name" do
      expect(p1.name).to eq "Marek"
    end
  end

  describe "#hp" do
    it "knows the player's hp" do
      expect(p1.hp).to eq Player::DEFAULT_HIT_POINTS
    end
  end

  describe "#receive_damage" do
    it { is_expected.to respond_to(:receive_damage)}
    it "#lowers opponent's hp by 10" do
      expect { p2.receive_damage }.to change { p2.hp }.by(-10)
    end
  end

end
