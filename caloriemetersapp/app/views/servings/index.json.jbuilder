json.array!(@servings) do |serving|
  json.extract! serving, :serving_size
  json.url serving_url(serving, format: :json)
end
