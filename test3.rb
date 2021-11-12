require './db.rb'
require './query.rb'

def intra_file_sql_injection
    # db = get_db()
    query = get_query()
    user = User.where("name = '#{query}'")
end

intra_file_sql_injection()
