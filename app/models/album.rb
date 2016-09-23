class Album < ApplicationRecord
  belongs_to :photographer
  has_many :album_items
end
