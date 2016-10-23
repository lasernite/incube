class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.text :image
      t.text :website
      t.string :contact

      t.timestamps
    end
  end
end