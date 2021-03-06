json.(show, :performed_at, :starts_at, :updated_at, :price, :age_restriction, :embeds, :extra_notes)

json.url polymorphic_url(show)
json.event_url show.url
json.banner_url show.banner.url(:fit)

json.venue do |json|
  json.(show.venue, :id, :name, :location, :address, :twitter, :facebook, :created_at, :updated_at)
  json.info_url show.venue.url
  # TODO make a helper for this!
  json.map_left_url   "https://stamen-tiles.a.ssl.fastly.net/watercolor/#{show.venue.to_tile(-1)}.jpg"
  json.map_center_url "https://stamen-tiles.a.ssl.fastly.net/watercolor/#{show.venue.to_tile}.jpg"
  json.map_right_url  "https://stamen-tiles.a.ssl.fastly.net/watercolor/#{show.venue.to_tile(1)}.jpg"
  json.url polymorphic_url(show.venue)
end

json.setlists show.setlists do |setlist|
  json.(setlist, :name, :position, :updated_at)

  json.songs setlist.slots do |slot|
    json.(slot.song, :name, :cover, :updated_at)
    json.(slot, :position, :transition, :notes)
  end
end
