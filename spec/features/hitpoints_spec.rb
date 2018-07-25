feature "Testing player hitpoints" do
  scenario "Players can entersee their remaining hitpoints on-screen" do
    sign_in_and_play
    expect(page).to have_content 'Marek: 50HP', 'Kirt: 50HP'
  end
end
