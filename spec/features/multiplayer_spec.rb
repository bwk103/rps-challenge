feature 'multiplayer', type: :feature do

  scenario 'two players can enter their names' do
    visit '/'
    expect(page).to have_field 'player1_name'
    expect(page).to have_field 'player2_name'
  end

  scenario 'two players can select their weapon' do
    multiplayer_sign_in_and_play
    expect(page).to have_content 'Bob, select your weapon!'
    click_button 'Rock'
    expect(page).to have_content 'Joe, select your weapon!'
  end

  scenario 'players are told if there is a tie' do
    multiplayer_sign_in_and_play
    click_button 'Rock'
    click_button 'Rock'
    expect(page).to have_content "It's a tie!"
  end

  scenario 'player 1 is the winner' do
    multiplayer_sign_in_and_play
    click_button 'Rock'
    click_button 'Scissors'
    expect(page).to have_content 'Bob wins!'
  end

  scenario 'player 2 is the winner' do
    multiplayer_sign_in_and_play
    click_button 'Rock'
    click_button 'Paper'
    expect(page).to have_content 'Joe wins!'
   end
end
