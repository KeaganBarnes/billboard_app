class Song < ApplicationRecord
  belongs_to :billboard, optional: true
  belongs_to :artist

  def attach_to_board
    songs = Song.all
    10.times do
    i = rand(songs.length)
      songs[i].billboard_id = 1
      songs[i].save
      songs -= songs[i]
    
    end
  end
end
