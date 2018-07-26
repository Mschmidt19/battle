feature 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Marek's turn"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      within ".p1_content" do
        click_button 'Attack!'
      end
      click_button 'Okay'
      expect(page).not_to have_content "Marek's turn"
      expect(page).to have_content "Kirt's turn"
    end
  end
end
