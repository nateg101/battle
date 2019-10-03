feature 'End Game' do
  scenario 'It ends game when player has 0 hp' do
    sign_in_and_play
    9.times do
      attack_return
    end
    expect(page).to have_content 'Game Over'
  end
end
