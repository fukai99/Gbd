class Post < ApplicationRecord
  has_many_attached :images, dependent: :destroy
  belongs_to :genre
end
