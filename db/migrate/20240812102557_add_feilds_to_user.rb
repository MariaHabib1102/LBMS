class AddFeildsToUser < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :contact, :string 
    add_column :users, :address, :text 
    add_column :users, :library_card_number, :integer
  end
end
