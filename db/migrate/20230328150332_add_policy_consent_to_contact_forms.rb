class AddPolicyConsentToContactForms < ActiveRecord::Migration[7.0]
  def change
    add_column :contact_forms, :policy_consent, :boolean
  end
end
