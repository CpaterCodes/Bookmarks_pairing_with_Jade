require 'pg'

class Bookmarks
  attr_reader :id, :title, :url
  def initialize(id:,title:,url:)
    @id = id
    @title = title
    @url = url
  end

  def self.all

    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'test_database')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end

    database = connection.exec('SELECT * FROM bookmarks')
    database.map do |bookmark|
      Bookmarks.new(id: bookmark['id'], title: bookmark['title'], url: bookmark['url'])
    end

  end

  def self.add(url:, title:)

    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'test_database')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    act = connection.exec("INSERT INTO bookmarks(url, title) VALUES('#{url}', '#{title}') RETURNING id, title, url;")
    Bookmarks.new(id: act[0]['id'], title: act[0]['title'], url: act[0]['url'])
  end


end
