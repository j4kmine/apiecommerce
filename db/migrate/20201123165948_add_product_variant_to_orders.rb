class AddProductVariantToOrders < ActiveRecord::Migration[6.0]
  def change
    add_reference :orders, :product_variant, null: false, foreign_key: true
  end
end
