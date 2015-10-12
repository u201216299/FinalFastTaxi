json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :Users_id, :brand, :year, :color, :passengers
  json.url vehicle_url(vehicle, format: :json)
end
