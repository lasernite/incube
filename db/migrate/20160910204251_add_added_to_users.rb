class AddAddedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :added, :boolean
  end
end
