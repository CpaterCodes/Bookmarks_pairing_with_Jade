require 'bookmarks'

describe Bookmarks do

  describe "#all" do
    it "should display all my bookmarks" do
      test_database_setup
      table = PG.connect(dbname: 'test_database')

      table.exec("INSERT INTO bookmarks(url)
      VALUES('http://destroyallsoftware.com'),('http://google.com'),
      ('http://youtube.com'),('http://makersacademy.com');")

      bookmarks = Bookmarks.all

      expect(bookmarks).to include("http://makersacademy.com")
      expect(bookmarks).to include("http://google.com")
      expect(bookmarks).to include("http://youtube.com")
    end
  end

end
