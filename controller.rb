require 'net/http'
require 'sqlite3'

db = SQLite3::Database.open 'test.db'

user = User.where("id = '#{params[:user][:id]}'")[0]

db.execute "SELECT * FROM users WHERE uname = '#{username}' AND password = '#{params[:password]}'"
