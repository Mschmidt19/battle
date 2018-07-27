def sign_in_and_play
  visit '/'
  fill_in 'player_1', with: 'Marek'
  fill_in 'player_2', with: 'Kirt'
  click_button 'Start Game'
end

def attack
  click_button 'Attack!'
end



def attack_and_confirm
  click_button 'Attack!'
  click_button 'Okay'
end


def attack_4_times_each
  8.times { attack_and_confirm }
end
