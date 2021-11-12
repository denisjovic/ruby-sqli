require 'sqlite3'

db = SQLite3::Database.open 'test.db'

user = User.where("id = '#{params[:user][:id]}'")[0]

