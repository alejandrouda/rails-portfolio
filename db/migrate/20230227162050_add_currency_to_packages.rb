class AddCurrencyToPackages < ActiveRecord::Migration[7.0]
  def change
    add_column :packages, :currency, :string
  end
end
