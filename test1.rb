require 'sqlite3'

db = SQLite3::Database.open 'test.db'

get_user = User.where("id = '#{params[:user][:id]}'")[0]

user2 = params[:user][:id]

get_user_2 = User.where("id = '#{user2}'")



