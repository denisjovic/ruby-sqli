require './db.rb'
require './query.rb'

def intra_file_sql_injection
    user = User.where("name = '#{$query}'")
end

intra_file_sql_injection()
