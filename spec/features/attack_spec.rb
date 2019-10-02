
feature 'Attack a player' do
  scenario 'player1 attacks player2' do
    sign_in_and_play
    click_button 'Attack!'
    expect(page).to have_content "Your attack was successful"
  end
end
