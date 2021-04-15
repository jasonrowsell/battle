# frozen_string_literal: true

feature 'View hit points' do
  scenario 'see opponents hit points' do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Player 2: 60HP'
  end
end
