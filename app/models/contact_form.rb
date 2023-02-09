class ContactForm < ApplicationRecord
    validates_presence_of :name, :phone, :content
    validates :email, presence: true, format: Devise.email_regexp
end
