feature "Testing settable names" do
  scenario "Players can enter their names and see them on-screen" do
    sign_in_and_play
    expect(page).to have_content 'Marek vs. Kirt'
  end
end
