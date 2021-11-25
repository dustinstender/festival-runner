class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :genres
      t.string :popularity
      t.string :related_artists
      t.string :spotify_id

      t.timestamps
    end
  end
end
