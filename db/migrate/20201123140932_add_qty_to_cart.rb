class AddQtyToCart < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :qty, :integer
  end
end
