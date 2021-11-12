  def sql_injection
    # @some_records = SomeRecord.where('name like ?', "%#{params.dig(:query, :name)}%") # without sql injection
    @some_records = SomeRecord.where("name like '%#{params.dig(:query, :name)}%'") # with sql injection
  end

  sql_injection()