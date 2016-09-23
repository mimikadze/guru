class ServicePhotoUploader < CarrierWave::Uploader::Base
  include MiniMagick
  include CarrierWave::MiniMagick
  
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process resize_to_fit: [100, 50]
  end

  version :original do
    process resize_to_fit: [1332, 648]
  end

end
