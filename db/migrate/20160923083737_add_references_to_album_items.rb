class AddReferencesToAlbumItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :album_items, :album, foreign_key: true
  end
end
