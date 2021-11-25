require 'rspotify'

RSpotify::authenticate(ENV['SPOTIFY_KEY'], ENV['SPOTIFY_SECRET'])
# RSpotify::authenticate('85bf58317c8c485d84922fa6b6b58f47', '13465358e8e044bbbea22159290e23cc')


artist = RSpotify::Artist.search('Strokes').first
# me = RSpotify::User.find('21vngtrewnddwq5bp4husva5a')

# me.playlists.each do |playlist|
#   puts playlist.name
# end

# puts me.recently_played

artist.related_artists.each do |artist|
  puts artist.name
end
