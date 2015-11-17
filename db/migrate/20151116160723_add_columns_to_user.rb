class AddColumnsToUser < ActiveRecord::Migration
  def change

    add_column :users, :name, :string
    add_column :users, :info, :string

   
  
  end
end
