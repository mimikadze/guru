ActiveAdmin.register UtilityPhoto do
  permit_params :service_photo, :location

  form do |f|
    f.inputs do
      f.input :service_photo
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
      row :location
      row "Image" do
          image_tag resource.service_photo.thumb.url
      end
    end
    active_admin_comments
  end

  index do
    selectable_column
    column "Image" do |item|
      image_tag item.service_photo.thumb.url
    end
    column :location
    actions
  end
end
