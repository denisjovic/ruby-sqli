require 'net/http'
require 'json'
require 'pg'


uri = URI('http://httpbin.org/post')
res = Net::HTTP.post_form(uri, 'username' => 'admin', 'password' => 'passwd')
data = JSON.parse(res.body)
user =  data['form']['username']
pass =  data['form']['password']


conn = PG.connect(dbname: 'testing', user: 'postgres')
rows = conn.exec("SELECT * FROM users WHERE username = #{user} AND password = #{pass}")
