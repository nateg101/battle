def sign_in_and_play
  visit('/')
  fill_in :player1, with: "Susan"
  fill_in :player2, with: "Celine"
  click_button 'Submit'
end

def attack_return
  click_button 'Attack!'
  click_button 'Return'
end
