require 'net/http'
require 'json'
require 'pg'


# uri = URI('http://httpbin.org/post')
# res = Net::HTTP.post_form(uri, 'username' => 'admin', 'password' => 'passwd')
# data = JSON.parse(res.body)
# user =  data['form']['username']
# pass =  data['form']['password']
# puts user



conn = PG.connect(dbname: 'testing', user: 'postgres')
rows = conn.exec("SELECT * FROM users WHERE uname = '#{params[:uname]}' AND password = '#{params[:password]}'")
puts rows