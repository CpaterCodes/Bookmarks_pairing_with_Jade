require 'bookmarks'
require './spec/web_helpers.rb'

describe Bookmarks do

  describe "#all" do
    it "should display all my bookmarks" do
      allow(Bookmarks).to receive(:all) {database}
      bookmarks = Bookmarks.all

      expect(bookmarks).to include("http://makersacademy.com")
      expect(bookmarks).to include("http://google.com")
      expect(bookmarks).to include("http://youtube.com")
    end
  end

end
