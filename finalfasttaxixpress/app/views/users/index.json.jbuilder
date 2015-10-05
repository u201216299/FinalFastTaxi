json.array!(@users) do |user|
  json.extract! user, :id, :name, :last_name, :age, :email, :phone, :user, :password, :user_profiles_id
  json.url user_url(user, format: :json)
end
