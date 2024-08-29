class Author < ApplicationRecord
    has_many :books
    def self.ransackable_attributes(auth_object = nil)
        ["bio", "created_at", "id", "id_value", "name", "updated_at"] # List attributes you want to search on
    end
end
  