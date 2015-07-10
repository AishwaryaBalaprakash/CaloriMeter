json.array!(@user_calories_data) do |user_calories_datum|
  json.extract! user_calories_datum, :user_info_id, :date_tracked, :target, :consumed_calories
  json.url user_calories_datum_url(user_calories_datum, format: :json)
end
