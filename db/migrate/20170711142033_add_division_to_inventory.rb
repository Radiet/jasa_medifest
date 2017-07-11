class AddDivisionToInventory < ActiveRecord::Migration[5.0]
  def change
    add_reference :inventories, :division, foreign_key: true
  end
end
