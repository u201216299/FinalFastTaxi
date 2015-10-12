json.array!(@services) do |service|
  json.extract! service, :id, :Customer_id, :districts_id, :reference_origin, :districts_id_des, :reference_destination, :Users_id
  json.url service_url(service, format: :json)
end
