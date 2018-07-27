feature "Game Over" do
  context "when Player 1 reaches 0HP first" do
    before do
      sign_in_and_play
      p1_attack_and_confirm
      p2_attack_and_confirm
      p1_attack_and_confirm
      p2_attack_and_confirm
      p1_attack_and_confirm
      p2_attack_and_confirm
      p1_attack_and_confirm
      p2_attack_and_confirm
      # allow(Kernel).to receive(:rand).and_return(50)
    end
    scenario "Player 1 loses" do
      p1_attack
      expect(page).to have_content 'Kirt loses.'
    end
  end
  context "when Player 2 reaches 0HP first" do

  end
end
