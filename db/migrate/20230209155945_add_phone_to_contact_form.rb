class AddPhoneToContactForm < ActiveRecord::Migration[7.0]
  def change
    add_column :contact_forms, :phone, :string
  end
end
