json.array!(@user_infos) do |user_info|
  json.extract! user_info, :user_id, :first_name, :last_name, :gender, :height, :dob, :weight
  json.url user_info_url(user_info, format: :json)
end
