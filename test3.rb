require './db.rb'
require './query.rb'

def intra_file_sql_injection
    db = $db
    query = $query
    user = User.where("name = '#{query}'")
end

intra_file_sql_injection()
