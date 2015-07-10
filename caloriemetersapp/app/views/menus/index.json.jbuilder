json.array!(@menus) do |menu|
  json.extract! menu, :restaurant_id, :serving_id, :menu_item, :calories
  json.url menu_url(menu, format: :json)
end
