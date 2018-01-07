feature 'Player names', type: :feature do
  scenario 'One player is able to enter their name' do
    visit '/'
    expect(page).to have_field 'player1_name'
  end

  scenario 'Two players are able to enter their names' do
    visit '/'
    expect(page).to have_field 'player1_name'
    expect(page).to have_field 'player2_name'
  end

  scenario 'The game recognises one player' do
    visit '/'
    fill_in('player1_name', with: 'Bob')
    click_button "Let's Play"
    expect(page).to have_content 'Bob, select your weapon!'
  end

  # scenario 'The game recognises both players' do
  #   visit '/'
  #   fill_in('player1_name', with: 'Bob')
  #   fill_in('player2_name', with: 'Joe')
  #   click_button "Let's Play"
  #   expect(page).to have_content 'Welcome to RPS Challenge, Bob & Joe'
  # end
end
