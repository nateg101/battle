feature 'End Game' do
  scenario 'It ends game when player has 0 hp' do
    sign_in_and_play
    8.times do
      attack_return
    end
    click_button 'Attack!'
    click_button 'Game Over'
    expect(page).to have_content 'Game Over'
  end
end
