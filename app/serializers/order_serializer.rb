class OrderSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :price, :qty,  :store, :product, :product_variant, :user
end
