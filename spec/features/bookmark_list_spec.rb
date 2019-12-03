feature "Bookmarks" do

  scenario "shows my bookmarks" do
    visit '/'
    click_on "See Bookmarks"
    expect(page).to have_content("http://makersacademy.com")
    expect(page).to have_content("http://google.com")
  end

end
