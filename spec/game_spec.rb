require 'game'

describe Game do

  subject(:game) { described_class.new(p1, p2) }
  let(:p1)       { double :player   }
  let(:p2)       { double :player   }

  describe "#player1" do
    it "returns the first player" do
      expect(game.player1).to eq p1
    end
  end

  describe "#player2" do
    it "returns the second player" do
      expect(game.player2).to eq p2
    end
  end

  describe "#current_turn" do
    it "starts as player1" do
      expect(game.current_turn).to eq p1
    end
  end

  describe "#switch_turns" do
    it "changes current_turn to player the next player" do
      game.switch_turns
      expect(game.current_turn).to eq p2
    end
  end

  describe "#opponent_of" do
    it { is_expected.to respond_to(:opponent_of).with(1).argument }
    it "returns the opposite player as the one being passed" do
      expect(game.opponent_of(p1)).to eq p2
      expect(game.opponent_of(p2)).to eq p1
    end
  end

  describe "#attack" do
    it { is_expected.to respond_to(:attack).with(1).argument }
    it "tells target to #receive_damage" do
      expect(p2).to receive(:receive_damage)
      game.attack(p2)
    end
  end

end
