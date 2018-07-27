feature 'Switch turns' do
  context 'seeing the current turn' do
    before do
      allow(Kernel).to receive(:rand).and_return(0)
    end
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Marek starts!"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      click_button 'Attack!'
      click_button 'Okay'
      expect(page).not_to have_content "Marek's turn"
      expect(page).to have_content "Kirt's turn"
    end
  end
end
