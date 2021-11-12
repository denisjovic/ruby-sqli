require 'sqlite3'

def get_db
    db = SQLite3::Database.open 'test.db'
    return db

end
