feature 'Players can select options', type: :feature do
  scenario 'Players can select Rock' do
    sign_in_and_play
    expect(page).to have_button 'Rock'
  end

  scenario 'Players can select Paper' do
    sign_in_and_play
    expect(page).to have_button 'Paper'
  end

  scenario 'Players can select Scissors' do
    sign_in_and_play
    expect(page).to have_button 'Scissors'
  end

  # scenario 'Players are given confirmation of their selection' do
  #   sign_in_and_play
  #   click_button 'Paper'
  #   expect(page).to have_content 'Ben chose Paper'
  # end
end
