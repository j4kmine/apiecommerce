class Store < ApplicationRecord
    has_many :products, dependent: :destroy
    has_many :carts
end
