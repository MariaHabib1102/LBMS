require "administrate/base_dashboard"

class BookDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    amount: Field::Number.with_options(decimals: 2),
    author: Field::BelongsTo,
    book_users: Field::HasMany,
    cover_image: Field::String,
    cover_image_attachment: Field::HasOne,
    cover_image_blob: Field::HasOne,
    description: Field::Text,
    genre: Field::String,
    liked_by_users: Field::HasMany,
    likes: Field::Number,
    likes: Field::Number,
    number_of_copies: Field::Number,
    pdf_attachment: Field::HasOne,
    pdf_blob: Field::HasOne,
    published_date: Field::Date,
    status: Field::String,
    title: Field::String,
    users: Field::HasMany,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    amount
    author
    book_users
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    amount
    author
    book_users
    cover_image
    cover_image_attachment
    cover_image_blob
    description
    genre
    liked_by_users
    likes
    likes
    number_of_copies
    pdf_attachment
    pdf_blob
    published_date
    status
    title
    users
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    amount
    author
    book_users
    cover_image
    cover_image_attachment
    cover_image_blob
    description
    genre
    liked_by_users
    likes
    likes
    number_of_copies
    pdf_attachment
    pdf_blob
    published_date
    status
    title
    users
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how books are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(book)
  #   "Book ##{book.id}"
  # end
end
