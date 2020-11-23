class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :price, :stock, :store, :product_variants
end
