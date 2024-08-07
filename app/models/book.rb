class Book < ApplicationRecord
  belongs_to :author
  #validates :cover_image, format: { with: URI::DEFAULT_PARSER.make_regexp, message: "must be a valid URL" }, allow_blank: true
end
