def sign_in_and_play
  visit '/'
  fill_in('player1_name', with: 'Bob')
  click_button "Let's Play"
end

def multiplayer_sign_in_and_play
  visit '/'
  fill_in 'player1_name', with: 'Bob'
  fill_in 'player2_name', with: 'Joe'
  click_button "Let's Play"
end
