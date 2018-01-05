feature 'Player names', type: :feature do
  scenario 'The player is able to enter their name' do
    visit '/'
    expect(page).to have_field 'player_name'
  end

  scenario 'Players are welcomed to the game, by name' do
    visit '/'
    fill_in('player_name', with: 'Bob')
    click_button "Let's Play"
    expect(page).to have_content 'Welcome to RPS Challenge, Bob' 
  end
end
