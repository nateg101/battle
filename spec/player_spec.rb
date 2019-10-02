require 'player'
describe Player do

  subject(:vijay) { described_class.new("vijay") }
  subject(:nat) { described_class.new("nat") }

  describe "#name" do
    it "should display the player's name" do
      expect(vijay.name).to eq "vijay"
    end
  end

  # describe "#attack" do
  #   it "allows players to attack each other" do
  #     expect(nat).to receive(:receive_damage)
  #     vijay.attack(nat)
  #   end
  # end
  describe "#receive_damage" do
    it "should reduce player2's HP by 10" do
      expect { nat.receive_damage }.to change { nat.hp }.by(-10)
    end
  end
end
