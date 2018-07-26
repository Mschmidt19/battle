def sign_in_and_play
  visit '/'
  fill_in 'player_1', with: 'Marek'
  fill_in 'player_2', with: 'Kirt'
  click_button 'Start Game'
end

def p1_attack
  within ".p1_content" do
    click_button 'Attack!'
  end
end

def p2_attack
  within ".p2_content" do
    click_button 'Attack!'
  end
end

def p1_attack_and_confirm
  within ".p1_content" do
    click_button 'Attack!'
  end
  click_button 'Okay'
end

def p2_attack_and_confirm
  within ".p2_content" do
    click_button 'Attack!'
  end
  click_button 'Okay'
end
