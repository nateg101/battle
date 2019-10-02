require 'game'

describe Game do
  subject(:game) { described_class.new }
  let(:nat) { double :player }
  let(:vijay) { double :player }

  describe "#attack" do
    it "allows players to attack each other" do
      expect(nat).to receive(:receive_damage)
      game.attack(nat)
    end
  end
end
