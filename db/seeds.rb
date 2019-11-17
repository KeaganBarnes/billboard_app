require 'faker'
include Faker

1.times do
  Artist.create(
    name: Faker::Music.band
    genre: Faker::Music.genre
  )
end

10.times do
  Song.create(
    name: Faker::RockBand.name
    genre: Faker::Music.genre
    album: Faker::Music.album
  )
end


Collapse
