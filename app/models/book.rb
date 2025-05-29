class Book < ApplicationRecord
  has_one_attached :book_image
  belongs_to :user
end
