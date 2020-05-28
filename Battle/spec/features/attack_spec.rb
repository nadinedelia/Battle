feature 'Attacking' do
  scenario 'player 1 attack Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Mittens: 60HP'
    expect(page).to have_content 'Mittens: 50HP'
  end
end
