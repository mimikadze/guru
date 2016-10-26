ActiveAdmin.register Album do
  menu label: 'Альбомы'
  permit_params :photographer_id, :title

  index do
    selectable_column
    column "Название альбома", :title
    column "Фотограф", :photographer_id
    actions
  end
end
