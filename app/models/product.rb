class Product < ApplicationRecord 
    belongs_to :restaurante
    has_many :orders
    validates :name, presence: true
end
