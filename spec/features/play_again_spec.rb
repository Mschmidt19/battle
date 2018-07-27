feature 'Play again' do
  scenario 'at the end of the game' do
    sign_in_and_play
    attack_4_times_each
    p1_attack
    click_button "Play Again"
    expect(page).to have_content "Marek vs. Kirt"
    expect(page).to have_content "Marek: 50HP"
    expect(page).to have_content "Kirt: 50HP"
  end
end
