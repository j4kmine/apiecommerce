class AddProductVariantToCarts < ActiveRecord::Migration[6.0]
  def change
    add_reference :carts, :product_variant, null: false, foreign_key: true
  end
end
