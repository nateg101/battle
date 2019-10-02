
feature 'Entering names' do
  scenario 'Players enter their name' do
    visit('/')
    fill_in :player1, with: "Susan"
    fill_in :player2, with: "Celine"
    click_button 'Submit'
    expect(page).to have_content "Susan vs Celine"
  end
end
