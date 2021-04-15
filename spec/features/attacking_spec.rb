# frozen_string_literal: true

feature 'Attacking' do
  scenario 'attack Player 2' do
    visit('/')
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Player 1 attacked Player 2!'
  end
end
