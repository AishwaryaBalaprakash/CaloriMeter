json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :restaurant_name
  json.url restaurant_url(restaurant, format: :json)
end
