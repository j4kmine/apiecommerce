class Product < ApplicationRecord
    belongs_to :store
    has_many :product_variants, dependent: :destroy
    has_many :carts
end
