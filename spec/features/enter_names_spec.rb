feature "Testing settable names" do
  scenario "Players can enter their names and see them on-screen" do
    allow(Kernel).to receive(:rand).and_return(0)
    sign_in_and_play
    expect(page).to have_content 'Marek vs. Kirt'
  end
end
