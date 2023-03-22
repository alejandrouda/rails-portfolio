class Package < ApplicationRecord
    validates_presence_of :name, :description, :price, :currency, :items
end
