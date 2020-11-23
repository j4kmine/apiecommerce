class CartSerializer < ActiveModel::Serializer
  attributes :id, :cart_id, :price, :qty, :store, :product, :product_variant
end
