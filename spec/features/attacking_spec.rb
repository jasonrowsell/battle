# frozen_string_literal: true

feature 'Attacking' do
  scenario 'attack Player 2' do
    visit('/')
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Player 1 attacked Player 2!'
  end

  scenario 'attacking Player 2' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).not_to have_content 'Player 2: 60HP'
    expect(page).to have_content 'Player 2: 50HP'
  end

  scenario 'attack message' do
    sign_in_and_play
    click_button 'Attack'
    expect(page).to have_content 'Player 1 attacked Player 2!'
  end

  scenario 'attacking Player 1' do
    sign_in_and_play
    2.times { 
      click_button 'Attack'
      click_link 'back'
    }
    expect(page).not_to have_content 'Player 1: 60HP'
    expect(page).to have_content 'Player 1: 50HP'
  end
end
