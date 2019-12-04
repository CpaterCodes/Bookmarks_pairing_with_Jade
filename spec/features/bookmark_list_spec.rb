feature "Bookmarks" do

  scenario "shows my bookmarks" do
    test_database_setup

    Bookmarks.add('http://destroyallsoftware.com')
    Bookmarks.add('http://google.com')
    Bookmarks.add('http://youtube.com')
    Bookmarks.add('http://makersacademy.com')

    visit '/'
    click_on "See Bookmarks"
    expect(page).to have_content("http://makersacademy.com")
    expect(page).to have_content("http://google.com")
  end

end
