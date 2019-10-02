
feature 'Entering names' do
  scenario 'Players enter their name' do
    sign_in_and_play
    expect(page).to have_content "Susan vs Celine"
  end
end
