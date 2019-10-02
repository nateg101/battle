require 'player'
describe Player do

  subject(:vijay) { described_class.new("vijay") }

  describe "#name" do
    it "should display the player's name" do
      expect(vijay.name).to eq "vijay"
    end
  end
end
