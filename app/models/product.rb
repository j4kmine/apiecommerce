class Product < ApplicationRecord
    attr_accessor :newattr
    belongs_to :store
    has_many :product_variants, dependent: :destroy
end
