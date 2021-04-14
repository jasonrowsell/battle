# frozen_string_literal: true

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    sign_in_and_play
    save_and_open_page
    expect(page).to have_content 'Player 1 VS. Player 2'
  end
end

feature 'View hit points' do
  scenario 'see opponents hit points' do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Player 2: 60HP'
  end
end

feature 'Attacking' do
  scenario 'attack Player 2' do
    visit('/')
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Player 1 attacked Player 2!'
  end
end
