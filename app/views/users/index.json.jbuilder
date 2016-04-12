json.array!(@users) do |user|
  json.extract! user, :id, :firs_name, :last_name, :username, :password, :email, :phone, :city
  json.url user_url(user, format: :json)
end
