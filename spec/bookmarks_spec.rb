require 'bookmarks'

describe Bookmarks do

  describe "#all" do
    it "should display all my bookmarks" do
      test_database_setup

      Bookmarks.add(url: 'http://destroyallsoftware.com', title: 'Destroy all Software')
      Bookmarks.add(url: 'http://google.com', title: 'Google')
      Bookmarks.add(url: 'http://youtube.com', title: 'Youtube')
      Bookmarks.add(url: 'http://makersacademy.com', title: 'Makers')

      bookmarks = Bookmarks.all

      expect(bookmarks[3].title).to include("Makers")
      expect(bookmarks[1].title).to include("Google")
      expect(bookmarks[2].title).to include("Youtube")
    end
  end

  describe "#add" do
    it "adds a bookmark to the database of bookmarks" do
      test_database_setup

      Bookmarks.add(url: 'http://www.zetcode.com', title: 'ZetCode')

      expect(Bookmarks.all[0].title).to include("ZetCode")
    end

    # it "raises an error if given an invalid url" do
    #   test_database_setup
    #
    #   expect{ Bookmarks.add(url: 'ted', title: 'ZetCode') }.to raise_error false
    # end
  end

end
