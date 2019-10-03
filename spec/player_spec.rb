require 'player'
describe Player do

  subject(:vijay) { described_class.new("vijay") }
  subject(:nat) { described_class.new("nat") }

  describe "#name" do
    it "should display the player's name" do
      expect(vijay.name).to eq "vijay"
    end
  end

  describe "#receive_damage" do
    it "should reduce player2's HP by 10" do
      allow(nat).to receive(:damage) {10}
      expect { nat.receive_damage }.to change { nat.hp }.by(-10)
    end

    it "reduces players2 health by random amount" do
      allow(nat).to receive(:damage) {15}
      expect { nat.receive_damage }.to change { nat.hp }.by(-15)
    end
  end
end
