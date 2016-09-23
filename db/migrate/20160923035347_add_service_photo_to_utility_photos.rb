class AddServicePhotoToUtilityPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :utility_photos, :service_photo, :string
  end
end
