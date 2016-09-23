class AddPhotoToAlbumItems < ActiveRecord::Migration[5.0]
  def change
    add_column :album_items, :photo, :string
  end
end
