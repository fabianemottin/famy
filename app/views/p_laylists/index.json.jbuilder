json.array!(@p_laylists) do |p_laylist|
  json.extract! p_laylist, :id, :playlistname
  json.url p_laylist_url(p_laylist, format: :json)
end
