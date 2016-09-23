class CreateUtilityPhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :utility_photos do |t|
      t.string :location

      t.timestamps
    end
  end
end
