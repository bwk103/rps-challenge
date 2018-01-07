feature 'multiplayer', type: :feature do

  scenario "two players can enter their names" do
    visit '/'
    expect(page).to have_field 'player1_name'
    expect(page).to have_field 'player2_name'
  end

  scenario "two players can select their weapon" do
    visit '/'
    fill_in 'player1_name', with: 'Bob'
    fill_in 'player2_name', with: 'Joe'
    click_button "Let's Play"
    expect(page).to have_content 'Bob, select your weapon!'
    click_button 'Rock'
    expect(page).to have_content 'Joe, select your weapon!'
  end
end
