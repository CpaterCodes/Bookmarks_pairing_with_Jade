require 'bookmarks'

describe Bookmarks do

  describe "#all" do
    it "should display all my bookmarks" do
      test_database_setup

      Bookmarks.add('http://destroyallsoftware.com')
      Bookmarks.add('http://google.com')
      Bookmarks.add('http://youtube.com')
      Bookmarks.add('http://makersacademy.com')

      bookmarks = Bookmarks.all

      expect(bookmarks).to include("http://makersacademy.com")
      expect(bookmarks).to include("http://google.com")
      expect(bookmarks).to include("http://youtube.com")
    end
  end

  describe "#add" do
    it "adds a bookmark to the database of bookmarks" do
      test_database_setup

      Bookmarks.add('www.zetcode.com')

      expect(Bookmarks.all).to include("www.zetcode.com")
    end
  end

end
