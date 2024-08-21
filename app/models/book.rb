class Book < ApplicationRecord
    belongs_to :author
    has_many :book_users
    has_one_attached :cover_image
    has_one_attached :pdf
    has_many :users, through: :book_users
end
  