require 'pg'

class Bookmarks

  def self.all

    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'test_database')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    database = connection.exec('SELECT * FROM bookmarks')
    database.map { |bookmark|
      bookmark['url']
    }

  end

  def self.add(bookmark)

    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'test_database')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    connection.exec("INSERT INTO bookmarks(url) VALUES('#{bookmark}');")
  end


end
