ActiveAdmin.register UtilityPhoto do
  menu label: 'Служебные Фотки'
  permit_params :service_photo, :location

  form do |f|
    f.inputs do
      f.input :service_photo, label: "Картинка"
      f.input :location, as: :select, collection:  [
                                                    ["Главная - первая",  "main-first"  ],
                                                    ["Главная - команда", "main-team"   ],
                                                    ["Главная - вторая",  "main-second" ],
                                                    ["Главная - третья",  "main-third"  ],
                                                    ["О нас",             "about-us"    ],
                                                    ["Контакты",          "contacts"    ]
                                                    ], include_blank: false
    end
    f.actions
  end

  show do
    attributes_table do
      row "Область сайта" do
        resource.location
      end
      row "Картинка" do
          image_tag resource.service_photo.thumb.url
      end
    end
    active_admin_comments
  end

  index do
    selectable_column
    column "Картинка" do |item|
      image_tag item.service_photo.thumb.url
    end
    column "Область сайта", :location
    actions
  end
end
