class AddTimeUnitToPackages < ActiveRecord::Migration[7.0]
  def change
    add_column :packages, :time_unit, :string
  end
end
