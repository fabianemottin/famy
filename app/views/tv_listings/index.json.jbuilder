json.array!(@tv_listings) do |tv_listing|
  json.extract! tv_listing, :id, :name, :videolink, :imagelink, :infolink, :language_id, :tv_category_id
  json.url tv_listing_url(tv_listing, format: :json)
end
