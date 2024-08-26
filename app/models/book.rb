class Book < ApplicationRecord
    belongs_to :author
    has_many :book_users
    has_one_attached :cover_image
    has_one_attached :pdf
    has_many :users, through: :book_users
    has_many :likes
    has_many :liked_by_users, through: :likes, source: :user
    def already_liked?(book)
        self.likes.exists?(book_id: book.id)
    end
end
  