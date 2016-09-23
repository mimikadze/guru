class AddReferencesToAlbums < ActiveRecord::Migration[5.0]
  def change
    add_reference :albums, :photographer, foreign_key: true
  end
end
