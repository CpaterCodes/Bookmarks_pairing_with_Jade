feature "Bookmarks" do

  scenario "shows my bookmarks" do
    test_database_setup

    Bookmarks.add(url: 'http://destroyallsoftware.com', title: 'Destroy all Software')
    Bookmarks.add(url: 'http://google.com', title: 'Google')
    Bookmarks.add(url: 'http://youtube.com', title: 'Youtube')
    Bookmarks.add(url: 'http://makersacademy.com', title: 'Makers')

    visit '/'
    click_on "See Bookmarks"
    expect(page).to have_link("Makers", href: 'http://makersacademy.com')
    expect(page).to have_link("Google", href: 'http://google.com')
  end

end
