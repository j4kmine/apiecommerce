class Cart < ApplicationRecord
    validates :cart_id, presence: true
    validates :price, presence: true
    validates :qty, presence: true, numericality: { only_integer: true }
    validates :product_id, presence: true
    validates :store_id, presence: true
    validates :product_variant_id, presence: true

    belongs_to :store
    belongs_to :product
    belongs_to :product_variant
end
