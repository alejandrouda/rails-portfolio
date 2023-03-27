class AddUrlHandleToPolicies < ActiveRecord::Migration[7.0]
  def change
    add_column :policies, :url_handle, :string
  end
end
