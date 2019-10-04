# frozen_string_literal: true

feature 'Check hitpoints' do
  scenario 'Player views opponents hitpoints' do
    sign_in_and_play
    expect(page).to have_content 'Celine: 50 HP'
  end
end

feature 'Player 1s HP decreases' do
  scenario 'Player 2 attacks player 1' do
    allow_any_instance_of(Player).to receive(:rand) { 10 }
    sign_in_and_play
    attack_return
    attack_return
    expect(page).to have_content 'Susan: 40 HP'
  end
end
