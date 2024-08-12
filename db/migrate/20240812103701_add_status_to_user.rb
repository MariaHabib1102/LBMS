class AddStatusToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :status, :string
  end
end
