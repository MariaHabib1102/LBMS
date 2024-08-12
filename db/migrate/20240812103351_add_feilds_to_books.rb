class AddFeildsToBooks < ActiveRecord::Migration[7.1]
  def change
    add_column :books, :number_of_copies, :integer
    add_column :books, :amount,  :float 
  end
end
