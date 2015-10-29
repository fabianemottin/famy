json.array!(@film_listings) do |film_listing|
  json.extract! film_listing, :id, :name, :videolink, :imagelink, :infolink, :language_id, :film_category_id
  json.url film_listing_url(film_listing, format: :json)
end
