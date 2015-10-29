json.array!(@music_listings) do |music_listing|
  json.extract! music_listing, :id, :name, :videolink, :imagelink, :infolink, :language_id, :music_category_id
  json.url music_listing_url(music_listing, format: :json)
end
