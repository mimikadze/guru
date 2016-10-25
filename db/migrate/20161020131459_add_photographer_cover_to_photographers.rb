class AddPhotographerCoverToPhotographers < ActiveRecord::Migration[5.0]
  def change
    add_column :photographers, :photographer_cover, :string
  end
end
