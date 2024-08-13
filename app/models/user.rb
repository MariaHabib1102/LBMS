class User < ApplicationRecord
  has_many :book_users
  has_many :books, through: :book_users
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  before_create :generate_library_card_number



  def generate_library_card_number
    loop do
      self.library_card_number = generate_unique_number
      break unless User.exists?(library_card_number: library_card_number)
    end
  end

  def generate_unique_number
    format('%06d', rand(1..999999))
  end
end
