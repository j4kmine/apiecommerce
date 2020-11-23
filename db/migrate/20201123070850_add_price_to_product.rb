class AddPriceToProduct < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :price, :decimal
    add_column :products, :stock, :integer
  end
end
