class AddItemsToPackages < ActiveRecord::Migration[7.0]
  def change
    add_column :packages, :items, :text, array: true, default: []
  end
end
