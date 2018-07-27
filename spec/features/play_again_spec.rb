feature 'Play again' do

  before do
    allow(Kernel).to receive(:rand).and_return(0)
    sign_in_and_play
    allow(Kernel).to receive(:rand).and_return(10)
    attack_4_times_each
  end

  scenario 'at the end of the game' do
    attack
    click_button "Play Again"
    expect(page).to have_content "Marek vs. Kirt"
    expect(page).to have_content "Marek: 50HP"
    expect(page).to have_content "Kirt: 50HP"
  end
end
