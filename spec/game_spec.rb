require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player, hp: 50, receive_damage: 40 }
  let(:player2) { double :player, hp: 50, receive_damage: 40 }

  describe "#attack" do
    it "allows players to attack each other" do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end
  end

  describe "#initialize" do
    it "takes two players as an argument" do
      expect(game.players).to eq [player1, player2]
    end
  end

  describe "#switch_turn" do
    it 'switches turns' do
      game.switch_turn
      expect(game.current_turn).to eq(player2)
    end
  end

  describe '#attacker' do
    it 'returns attackers name' do
      expect(game.attacker).to eq(player1)
    end
  end

  describe '#defender' do
    it 'returns defenders name after switching turns' do
      game.switch_turn
      expect(game.defender).to eq(player1)
    end
  end

  describe '#end_game?' do
    it 'returns false when players health full' do
      expect(game.end_game?).to eq(false)
    end

    it 'returns true when player has no HP' do
      allow(player2).to receive(:hp){0}
      expect(game.end_game?).to eq(true)
    end
  end
end
