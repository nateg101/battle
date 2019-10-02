
feature 'Check hitpoints' do
  scenario 'Player views opponents hitpoints' do
    sign_in_and_play
    expect(page).to have_content "Celine: 50 HP"
  end
end
