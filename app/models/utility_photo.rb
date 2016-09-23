class UtilityPhoto < ApplicationRecord
  mount_uploader :service_photo, ServicePhotoUploader
end
