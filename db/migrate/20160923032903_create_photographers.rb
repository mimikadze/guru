class CreatePhotographers < ActiveRecord::Migration[5.0]
  def change
    create_table :photographers do |t|
      t.string :name
      t.text :moto
      t.string :phone
      t.string :instagramm
      t.boolean :is_videograph
      t.text :promotional_text

      t.timestamps
    end
  end
end
