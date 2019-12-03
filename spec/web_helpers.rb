def database
  connection = PG.connect(dbname: 'test_database')
  database = connection.exec('SELECT * FROM bookmarks')
  database.map { |bookmark|
    bookmark['url']
  }
end