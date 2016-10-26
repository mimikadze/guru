ActiveAdmin.register AlbumItem do
  menu label: 'Фото и видео в альбомы'
  permit_params :album_id, :photo


  index do
    selectable_column
    column "Фотография" do |item|
      image_tag item.photo.thumb.url
    end
    column "Альбом", :album_id
    actions
  end

end
