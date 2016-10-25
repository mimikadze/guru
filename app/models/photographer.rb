class Photographer < ApplicationRecord
  has_many :albums
  mount_uploader :photographer_cover, PhotographerCoverUploader
end
