require 'bookmarks'

describe Bookmarks do

  describe "#all" do
    it "should display all my bookmarks" do
      bookmarks = Bookmarks.all
      
      expect(bookmarks).to include("http://makersacademy.com")
      expect(bookmarks).to include("http://google.com")
    end
  end

end
