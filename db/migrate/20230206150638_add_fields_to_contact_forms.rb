class AddFieldsToContactForms < ActiveRecord::Migration[7.0]
  def change
    add_column :contact_forms, :name, :string
    add_column :contact_forms, :email, :string
    add_column :contact_forms, :content, :text
  end
end
