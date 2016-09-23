class AlbumItem < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :album
end
