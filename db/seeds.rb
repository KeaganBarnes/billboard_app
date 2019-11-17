require 'faker'
include Faker

10.times do
  Artist.create
    name: Faker::Music.band,
    genre: Faker::Music.genre


100.times do
  Song.create
    name: Faker::Name.name,
    genre: Faker::Music.genre,
    album: Faker::Music.album
  
end


Collapse
