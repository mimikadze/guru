class AddTitleToAlbum < ActiveRecord::Migration[5.0]
  def change
    add_column :albums, :title, :string
  end
end
