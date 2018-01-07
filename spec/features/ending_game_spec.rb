feature 'game ends', type: :feature do

  before(:each) do
    allow_any_instance_of(Array).to receive(:sample).and_return('Paper')
    sign_in_and_play
  end

  scenario 'players are congratulated if they win' do
    click_button 'Scissors'
    expect(page).to have_content 'You win!'
  end

  scenario 'players are told if they lose' do
    click_button 'Rock'
    expect(page).to have_content 'You lose!'
  end

  scenario 'players are told if it is a tie' do
    click_button 'Paper'
    expect(page).to have_content "It's a tie!"
  end
end
