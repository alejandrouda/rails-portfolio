class ContactForm < ApplicationRecord
    validates_presence_of :name, :phone, :content
    validates :email, presence: true, format: Devise.email_regexp
    validates :policy_consent, presence: true, inclusion: { in: [true] }
end
