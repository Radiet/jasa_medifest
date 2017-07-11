class CreateInventories < ActiveRecord::Migration[5.0]
  def change
    create_table :inventories do |t|
      t.string :name
      t.string :owner_name
      t.string :no_identity
      t.string :no_inventory

      t.timestamps
    end
  end
end
