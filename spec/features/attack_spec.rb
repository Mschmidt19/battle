feature "Testing player attacks" do
  context "Player 1 attacking player 2" do
    scenario "Player 1 can attack player 2 and get confirmation on-screen" do
      sign_in_and_play
      p1_attack
      expect(page).to have_content 'Marek attacked Kirt!'
    end

    scenario "Player 1 attacking lowers player 2's hp by 10" do
      sign_in_and_play
      p1_attack_and_confirm
      expect(page).to have_content 'Kirt: 40HP'
    end
  end

  context "Player 2 attacking player 1" do
    scenario "Player 2 can attack player 1 and get confirmation on-screen" do
      sign_in_and_play
      p1_attack_and_confirm
      p2_attack
      expect(page).to have_content 'Kirt attacked Marek!'
    end

    scenario "Player 2 attacking lowers player 1's hp by 10" do
      sign_in_and_play
      p1_attack_and_confirm
      p2_attack_and_confirm
      expect(page).to have_content 'Marek: 40HP'
    end
  end
end
