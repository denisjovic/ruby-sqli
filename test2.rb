  def sql_injection
    query = SomeRecord.where("name like '%#{params.dig(:query, :name)}%'") # with sql injection
  end

  sql_injection()

    def no_sql_injection
    query = SomeRecord.where('name like ?', "%#{params.dig(:query, :name)}%") # without sql injection
  end

  no_sql_injection()