json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :language_id, :music_category_id, :film_category_id, :tv_category_id
  json.url profile_url(profile, format: :json)
end
