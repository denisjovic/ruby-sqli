require 'sqlite3'

db = SQLite3::Database.open 'test.db'

query = params[:user][:id]

user = User.where("id = '#{query}'")



