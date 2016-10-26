ActiveAdmin.register Photographer do
menu label: 'Фотографы'
permit_params :name, :moto, :phone, :instagramm,
                            :is_videograph, :promotional_text, :photographer_cover

form do |f|
    f.inputs do
      f.input :name, label: "Имя"
      f.input :moto, label: "Девиз"
      f.input :promotional_text, label: "Промо текст"
      f.input :phone, label: "Телефон"
      f.input :instagramm, label: "Инстаграм"
      f.input :is_videograph, label: "Является видеографом?"
      f.input :photographer_cover, label: "Обложка фотографа 440x380"
    end
    f.actions
end

  show do
    attributes_table do
      row "Имя" do
        resource.name
      end
      row "Девиз" do
        resource.moto
      end
      row "Телефон" do
        resource.phone
      end
      row "Инстаграм" do
        resource.instagramm
      end
      row "Является видеографом?" do
        resource.is_videograph? ? status_tag( "Да", :ok ) : status_tag( "Нет" )
      end
      row "Обложка" do
          image_tag resource.photographer_cover.thumb.url
      end
    end
    active_admin_comments
  end

  index do
    selectable_column
    column "Обложка" do |item|
      image_tag item.photographer_cover.thumb.url
    end
    column "Имя", :name
    column "Является ли Видеографом", :is_videograph
    actions
  end


end
