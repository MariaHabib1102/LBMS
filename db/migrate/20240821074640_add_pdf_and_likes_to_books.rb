class AddPdfAndLikesToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :likes, :integer, default: 0, null: false
  end
end
