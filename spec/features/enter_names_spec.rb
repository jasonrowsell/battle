feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Player 1'
    fill_in :player_2_name, with: 'Player 2'
    click_button 'Submit'
    save_and_open_page
    expect(page).to have_content 'Player 1 vs. Player 2'
  end
end