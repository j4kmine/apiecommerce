class RemovePriceFromProductVariant < ActiveRecord::Migration[6.0]
  def change
    remove_column :product_variants, :price, :decimal
    remove_column :product_variants, :stock, :integer
  end
end
