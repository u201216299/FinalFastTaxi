json.array!(@customers) do |customer|
  json.extract! customer, :id, :name, :last_name, :age, :email, :phone, :user, :password
  json.url customer_url(customer, format: :json)
end
