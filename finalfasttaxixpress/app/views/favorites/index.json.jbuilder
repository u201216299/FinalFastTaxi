json.array!(@favorites) do |favorite|
  json.extract! favorite, :id, :description, :Users_id, :districts_id, :reference
  json.url favorite_url(favorite, format: :json)
end
