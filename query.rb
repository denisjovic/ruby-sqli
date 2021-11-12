def get_query
    $query = params[:user][:name]
    return $query
end
