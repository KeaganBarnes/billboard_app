100.times do
  Artist.create(
    name: Faker::Artist.name,
    genre: Faker::Music.genre,
  )
end


Collapse
