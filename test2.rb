  def get_username
    query = params[:user][:id]
    return query
  end
  
  
  def sql_injection
    user = get_username()
    query = User.where("name like '%#{params.dig(:query, :name)}%'") # sql injection
    query2 = User.where("name like '%#{user}%'") 
  end

  sql_injection()




  def no_sql_injection
    user = get_username()
    query = User.where('name like ?', "%#{params.dig(:query, :name)}%") # no sql injection
  end

  no_sql_injection()