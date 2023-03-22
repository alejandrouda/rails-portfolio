class AddUrlToServices < ActiveRecord::Migration[7.0]
  def change
    add_column :services, :url, :string
  end
end
