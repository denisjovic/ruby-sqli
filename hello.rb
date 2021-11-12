require 'pg'

name = 

conn = PG.connect(dbname: 'testing', user: 'postgres')
rows = conn.exec("SELECT * FROM users WHERE username = #{name}")
