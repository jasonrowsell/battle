# frozen_string_literal: true

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Player 1 VS. Player 2'
  end
end
