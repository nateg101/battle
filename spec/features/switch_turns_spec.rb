
feature 'Switch turns' do
  scenario 'When you land on play page, you know its P1s turn' do
    sign_in_and_play
    expect(page).to have_content "Susan's turn to attack."
  end
end

feature 'Switch turns' do
  scenario 'Player1 has attacked, when returning to /play P2s turn' do
    sign_in_and_play
    click_button 'Attack!'
    click_button 'Return'
    expect(page).to have_content "Celine's turn to attack."
    expect(page).not_to have_content "Susan's turn to attack."
  end
end
