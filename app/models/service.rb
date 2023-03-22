class Service < ApplicationRecord
    validates_presence_of :name, :title, :description, :image, :url
end
