feature "Bookmarks" do

  scenario "shows my bookmarks" do
    test_database_setup

    table = PG.connect(dbname: 'test_database')

    table.exec("INSERT INTO bookmarks(url)
    VALUES('http://destroyallsoftware.com'),('http://google.com'),
    ('http://youtube.com'),('http://makersacademy.com');")

    visit '/'
    click_on "See Bookmarks"
    expect(page).to have_content("http://makersacademy.com")
    expect(page).to have_content("http://google.com")
  end

end
