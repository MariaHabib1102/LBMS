class AddFeesToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :fees, :float
  end
end
