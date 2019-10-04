# frozen_string_literal: true

feature 'Attack a player' do
  scenario 'player1 attacks player2' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content "Susan's attack was successful"
  end
end

feature 'Attacking player 1' do
  scenario 'player1 attacks and reduces HP' do
    allow_any_instance_of(Player).to receive(:rand) { 15 }
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content 'Celine : 35HP'
    expect(page).not_to have_content 'Celine : 50HP'
  end
end

feature 'Attacking player 2' do
  scenario 'player 2 attacks player 1' do
    sign_in_and_play
    attack_return
    click_button 'Attack!'
    expect(page).to have_content "Celine's attack was successful"
    expect(page).not_to have_content "Susan's attack was successful"
  end
end
