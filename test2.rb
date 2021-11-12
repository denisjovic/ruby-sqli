  def get_username
    uname = params.dig(:query, :name)
    return uname
  
  def sql_injection
    user = get_username()
    query = SomeRecord.where("name like '%#{params.dig(:query, :name)}%'") # sql injection
    query2 = SomeRecord.where("name like '%#{user}%'") 
  end

  sql_injection()

    def no_sql_injection
    query = SomeRecord.where('name like ?', "%#{params.dig(:query, :name)}%") # without sql injection
  end

  no_sql_injection()