
require 'pg'
p "Init database test"
def test_database_setup
  table = PG.connect(dbname: 'test_database')
  table.exec("TRUNCATE bookmarks;")
end
