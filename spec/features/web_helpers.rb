def sign_in_and_play
  visit '/'
  fill_in 'player_1', with: 'Marek'
  fill_in 'player_2', with: 'Kirt'
  click_button 'Start Game'
end
