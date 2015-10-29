json.array!(@tv_categories) do |tv_category|
  json.extract! tv_category, :id, :category
  json.url tv_category_url(tv_category, format: :json)
end
