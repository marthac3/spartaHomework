class AddArtistToSongs < ActiveRecord::Migration[5.1]
  def change
  	add_reference :songs, :artist, index: true
  end
end
