require 'pg'

class Bookmarks

  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    database = connection.exec('SELECT * FROM bookmarks')
    database.map { |bookmark|
      bookmark['url']
    }
    
  end

end
